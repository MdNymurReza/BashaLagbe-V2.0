# BashaLagbe — Project Features

UIU ক্যাম্পাসের আশেপাশে বাসা খোঁজার জন্য তৈরি একটি সম্পূর্ণ হাউজিং প্ল্যাটফর্ম।  
**Tech Stack:** Next.js (App Router) · TypeScript · Supabase (PostgreSQL + Auth) · Leaflet Maps

---

## ১. লিস্টিং ব্রাউজার (Listings)

- UIU-এর আশেপাশের সব বাসার লিস্টিং দেখা যায়
- প্রতিটি কার্ডে **ভাড়া + সকল বিল** (বিদ্যুৎ, গ্যাস, পানি, ইন্টারনেট) একসাথে সম্পূর্ণ মাসিক খরচ দেখানো হয় — **কোনো লুকানো চার্জ নেই**
- **ফিল্টার করুন:** Zone, ধরন (Single Room / Shared / Full Mess / Sublet), ভাড়ার রেঞ্জ, Gender Preference, Furnished কিনা
- **Map View** — Leaflet.js দিয়ে ম্যাপে লিস্টিং দেখা যায়
- লিস্টিং Details পেজে: ছবি গ্যালারি, সুযোগ-সুবিধার তালিকা, পূর্ণ খরচের বিবরণ, রিভিউ, অফার সেকশন

---

## ২. ফ্ল্যাটমেট ম্যাচিং (Flatmate Compatibility)

- **৮-ডাইমেনশন কম্প্যাটিবিলিটি স্কোর** হিসাব করা হয়:
  - ঘুমের সময়, খাদ্যাভ্যাস, পরিচ্ছন্নতা, শব্দ সহনশীলতা, অতিথি নিয়ম, পড়াশোনার সময়, ধূমপান/মদ্যপান অভ্যাস, লিঙ্গ পছন্দ
- স্কোর হিসেবে **High Match (92%)**, **Good Match (71%)**, **Low Match (38%)** দেখানো হয়
- Seeking পেজ থেকে পোস্ট করা যায় — কে কোন ধরনের রুম বা ফ্ল্যাটমেট খুঁজছে সেটা জানানো যায়

---

## ৩. Seeking পোস্ট (Flatmate / Room Wanted Ads)

- যেকোনো ইউজার "Seeking Flatmates" পেজে বিজ্ঞাপন দিতে পারে
- **ফিল্টার:** Property Type, Zone, Preferred Gender
- **পোস্টে থাকে:** বাজেট, লোকেশন, জীবনযাপনের পছন্দ, যোগাযোগের বাটন
- অ্যাডমিন দেখতে পারেন কিন্তু পোস্ট করতে পারেন না

---

## ৪. BashaLagbe Exchange (কেনা-বেচা)

- ক্যাম্পাস জোনের মধ্যে পুরনো জিনিস (ফ্যান, টেবিল, চেয়ার, ইলেকট্রনিক্স) কেনা-বেচা করা যায়
- **Offer System:** ক্রেতা দাম অফার করতে পারে, বিক্রেতা:
  - Accept করতে পারে
  - Reject করতে পারে
  - Counter Offer দিতে পারে
- আইটেমের ডিটেইল পেজে ছবি, বিবরণ, বিক্রেতার প্রোফাইল দেখা যায়

---

## ৫. মেস বিল ম্যানেজার (Bills Manager)

- ল্যান্ডলর্ড প্রতি মাসের বিল তৈরি করতে পারেন:
  - বিদ্যুৎ, গ্যাস, পানি, ইন্টারনেট, অন্যান্য
  - Custom ফি যোগ করা যায় (যেমন: ক্লিনার, সিকিউরিটি)
- **মাথাপিছু ভাগ** অটোমেটিক হিসাব হয়
- প্রতিটি বাসিন্দার পেমেন্ট স্ট্যাটাস ট্র্যাক করা যায় (Paid / Unpaid)
- ইউজার নিজের বিল দেখতে পারেন

---

## ৬. রিভিউ সিস্টেম (Reviews)

- **৫-ডাইমেনশন রেটিং:**
  - Value for Money
  - Listing Accuracy
  - Landlord Response
  - Cleanliness
  - Safety
- লিখিত কমেন্ট + কম্পোজিট স্কোর দেখানো হয়
- একজন ইউজার একটি লিস্টিংয়ে একবারই রিভিউ দিতে পারেন

---

## ৭. মেসেজিং সিস্টেম (Direct Messages)

- ইউজাররা একে অপরকে সরাসরি মেসেজ পাঠাতে পারে
- Navbar-এ MessageIcon — অপঠিত মেসেজের সংখ্যা দেখায়
- লিস্টিং ও Exchange আইটেম পেজে "Message" বাটন থেকে সরাসরি কথা শুরু করা যায়

---

## ৮. নোটিফিকেশন সিস্টেম (Notifications)

- NotificationBell কম্পোনেন্ট — অপঠিত নোটিফিকেশনের সংখ্যা দেখায়
- নোটিফিকেশনের ধরন: verification, complaint, listing, সাধারণ সিস্টেম নোটিফ
- "Mark as Read" করার অপশন আছে

---

## ৯. ইউজার প্রোফাইল ও অথেন্টিকেশন

- UIU Email দিয়ে রেজিস্ট্রেশন (Supabase Auth)
- রোল: student | landlord | admin
- প্রোফাইলে: নাম, ছবি আপলোড (Avatar), জীবনযাপনের পছন্দ (Flatmate Preferences)
- Watchlist — পছন্দের লিস্টিং সেভ করে রাখা যায়
- Suspended ইউজার লগইনের সাথে সাথে Sign Out হয়ে যায়

---

## ১০. ল্যান্ডলর্ড ভেরিফিকেশন (NID Verification)

- ল্যান্ডলর্ড NID / পাসপোর্ট / ড্রাইভিং লাইসেন্স ডকুমেন্ট আপলোড করে ভেরিফিকেশন আবেদন করতে পারেন
- অ্যাডমিন ডকুমেন্ট দেখে Approve / Reject / Revoke করতে পারেন
- ভেরিফাইড ল্যান্ডলর্ডের প্রোফাইলে BadgeCheck আইকন দেখানো হয়

---

## ১১. কমপ্লেইন্ট সিস্টেম (Complaints)

- যেকোনো ইউজার অন্য ইউজার বা লিস্টিং সম্পর্কে অভিযোগ দায়ের করতে পারেন
- অ্যাডমিন Resolve / Dismiss করতে পারেন

---

## ১২. অ্যাডমিন ড্যাশবোর্ড

পাঁচটি ট্যাবে সাজানো সম্পূর্ণ ম্যানেজমেন্ট প্যানেল:

| ট্যাব | কী দেখা / করা যায় |
|---|---|
| Overview | মোট লিস্টিং, মোট ইউজার, খোলা কমপ্লেইন্ট, Pending ভেরিফিকেশন; Zone অনুযায়ী গড় ভাড়ার চার্ট; Demand vs Supply চার্ট |
| Users & Listings | সকল ইউজার দেখা, Suspend/Activate করা; সকল লিস্টিং দেখা, Delete করা |
| ID Verifications | ভেরিফিকেশন আবেদন দেখা, ডকুমেন্ট ভিউ করা, Approve/Reject/Revoke করা |
| Complaints | সকল অভিযোগ দেখা, Resolve/Dismiss করা |
| Notifications | সিস্টেম নোটিফিকেশন দেখা, Mark as Read করা |

---

## ১৩. অতিরিক্ত UI/UX বৈশিষ্ট্য

- Navbar: Scroll করলে hide হয়, উপরে উঠলে আবার দেখায়; Mobile hamburger menu
- Hero Search Form: Home পেজ থেকেই লিস্টিং সার্চ করা যায়
- MapPicker: লিস্টিং তৈরির সময় ম্যাপ থেকে লোকেশন পিন করা যায়
- StatusChanger: লিস্টিং স্ট্যাটাস (Available / Occupied / Paused) পরিবর্তন
- WatchlistButton: লিস্টিং পেজ থেকে সরাসরি Watchlist-এ যোগ করা
- Sonner Toasts: সব অ্যাকশনে success/error নোটিফিকেশন
- Zod Validation: সব ফর্মে schema-level ভ্যালিডেশন

---

## ডেটাবেস টেবিল (সারসংক্ষেপ)

profiles, listings, utility_costs, items, offers,
bills, bill_payments, reviews, seeking_posts,
messages, notifications, verifications, complaints,
watchlist, zones

---

*শেষ আপডেট: সেপ্টেম্বর ২০২৬*
