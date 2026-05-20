-- 005f — M07 horse feeding


-- ============================================================================
-- M07-horse-feeding — sections and content
-- ============================================================================

WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug='M07-horse-feeding')
INSERT INTO acharya_cowherd.crs_sections (module_id, slug, sort_order, estimated_hours)
SELECT mod.id, 'M07-S1', 1, 1.0 FROM mod ON CONFLICT (module_id, slug) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'en', 'Hay, Concentrates and Colic Prevention',
'Hay must form 60-70% of a horse diet by dry weight — minimum 1.5% of body weight in forage daily. A 500 kg horse needs at least 7.5 kg of hay per day. Horses are trickle feeders and need to eat small amounts constantly — a horse with an empty stomach for more than 4-6 hours is at risk of gastric ulcers. Concentrates (grain, pelleted feed) supply extra energy for working horses — give 2 feeds daily at most, never one large feed. The single biggest cause of colic is a sudden change in feed. Always introduce any new feed gradually over 7-10 days. Water: offer water before feeding concentrate, not immediately after — a thirsty horse drinking rapidly after eating grain is a colic risk. A 500 kg horse drinks 20-50 litres daily. Never restrict water.',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M07-horse-feeding' AND s.slug='M07-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'bn', 'খড়, ঘন খাদ্য ও কোলিক প্রতিরোধ',
'খড় শুকনো ওজন অনুসারে ঘোড়ার খাদ্যের ৬০-৭০% তৈরি করতে হবে — দৈনিক কমপক্ষে শরীরের ওজনের ১.৫% চারা। ৫০০ কেজি ঘোড়ার দিনে কমপক্ষে ৭.৫ কেজি খড় দরকার। ঘোড়া ক্রমাগত অল্প পরিমাণে খায় — ৪-৬ ঘণ্টারও বেশি খালি পেটে থাকলে গ্যাস্ট্রিক আলসারের ঝুঁকি। ঘন খাদ্য (শস্য, দানাদার খাদ্য) কর্মরত ঘোড়ার জন্য অতিরিক্ত শক্তি সরবরাহ করে — সর্বোচ্চ দৈনিক ২ বার, কখনো একটি বড় খাবার নয়। কোলিকের সবচেয়ে বড় কারণ হলো হঠাৎ খাদ্য পরিবর্তন। যেকোনো নতুন খাদ্য ৭-১০ দিনে ধীরে ধীরে পরিচয় করুন।',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M07-horse-feeding' AND s.slug='M07-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'hi', 'घास, सांद्र और कोलिक रोकथाम',
'घास शुष्क वजन के अनुसार घोड़े के आहार का 60-70% होनी चाहिए — दैनिक शरीर के वजन का कम से कम 1.5% चारा। 500 किग्रा घोड़े को प्रतिदिन कम से कम 7.5 किग्रा घास चाहिए। घोड़े लगातार थोड़ा-थोड़ा खाते हैं — 4-6 घंटे से अधिक खाली पेट रहने से गैस्ट्रिक अल्सर का खतरा। सांद्र (दाना, दाना चारा) काम करने वाले घोड़ों के लिए अतिरिक्त ऊर्जा देता है — अधिकतम दिन में 2 बार, कभी एक बड़ा भोजन नहीं। कोलिक का सबसे बड़ा कारण चारे में अचानक बदलाव है। कोई भी नया चारा 7-10 दिनों में धीरे-धीरे पेश करें।',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M07-horse-feeding' AND s.slug='M07-S1'
ON CONFLICT (section_id, lang) DO NOTHING;
