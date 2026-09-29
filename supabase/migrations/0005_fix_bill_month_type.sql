-- ============================================================
-- UIUNest v2 — Migration 0005
-- Fix bill_month column type
-- ============================================================

-- The frontend expects to save and read string formats like "September 2026"
-- instead of a strict YYYY-MM-DD date.
ALTER TABLE public.monthly_bills 
  ALTER COLUMN bill_month TYPE VARCHAR(50) 
  USING bill_month::VARCHAR;
