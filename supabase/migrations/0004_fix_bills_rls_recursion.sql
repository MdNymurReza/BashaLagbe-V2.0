-- ============================================================
-- UIUNest v2 — Migration 0004
-- Fix RLS Infinite Recursion between monthly_bills and bill_payments
-- ============================================================

-- 1. Create helper functions that bypass RLS checks internally (SECURITY DEFINER)
CREATE OR REPLACE FUNCTION public.check_bill_resident(check_bill_id INT)
RETURNS BOOLEAN
LANGUAGE sql
SECURITY DEFINER
SET search_path = public
AS $$
  SELECT EXISTS (
    SELECT 1 FROM bill_payments 
    WHERE bill_id = check_bill_id AND resident_user_id = auth.uid()
  );
$$;

CREATE OR REPLACE FUNCTION public.check_bill_creator(check_bill_id INT)
RETURNS BOOLEAN
LANGUAGE sql
SECURITY DEFINER
SET search_path = public
AS $$
  SELECT EXISTS (
    SELECT 1 FROM monthly_bills 
    WHERE bill_id = check_bill_id AND created_by = auth.uid()
  );
$$;

-- 2. Drop the recursive policies
DROP POLICY IF EXISTS "Bills viewable by involved users." ON monthly_bills;
DROP POLICY IF EXISTS "Payments viewable by involved users." ON bill_payments;
DROP POLICY IF EXISTS "Listing owners can manage payments." ON bill_payments;

-- 3. Recreate the policies using the safe helper functions
CREATE POLICY "Bills viewable by involved users." ON monthly_bills FOR SELECT USING (
  auth.uid() = created_by OR public.check_bill_resident(bill_id)
);

CREATE POLICY "Payments viewable by involved users." ON bill_payments FOR SELECT USING (
  resident_user_id = auth.uid() OR public.check_bill_creator(bill_id)
);

CREATE POLICY "Listing owners can manage payments." ON bill_payments FOR ALL USING (
  public.check_bill_creator(bill_id)
);
