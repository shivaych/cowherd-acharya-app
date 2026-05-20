-- 005d — M05 calf care


-- ============================================================================
-- M05-calf-care — sections and content
-- ============================================================================

WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug='M05-calf-care')
INSERT INTO acharya_cowherd.crs_sections (module_id, slug, sort_order, estimated_hours)
SELECT mod.id, 'M05-S1', 1, 1.0 FROM mod ON CONFLICT (module_id, slug) DO NOTHING;

WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug='M05-calf-care')
INSERT INTO acharya_cowherd.crs_sections (module_id, slug, sort_order, estimated_hours)
SELECT mod.id, 'M05-S2', 2, 1.0 FROM mod ON CONFLICT (module_id, slug) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'en', 'Colostrum and First Week',
'Colostrum — the thick yellowish first milk — must be fed to the calf within one hour of birth. This window is critical: the calf gut can absorb protective antibodies for only the first 24 hours of life, and absorption peaks in the first 1-2 hours. A calf that does not get colostrum in time has almost no immune protection and is likely to die from scours or pneumonia within days. Feed 10% of body weight in colostrum in the first 24 hours, divided into 2-3 feeds. A 25 kg calf needs 2.5 litres. If the mother cannot feed, use colostrum from another cow that calved the same day. From day 2, feed whole milk at 10% body weight twice daily until weaning at 8-12 weeks. Keep the calf in a clean dry pen separate from adult cattle.',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M05-calf-care' AND s.slug='M05-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'bn', 'শালদুধ ও প্রথম সপ্তাহ',
'শালদুধ — ঘন হলুদাভ প্রথম দুধ — জন্মের এক ঘণ্টার মধ্যে বাছুরকে খাওয়াতে হবে। এই সময়সীমা গুরুত্বপূর্ণ: বাছুরের পেট জীবনের প্রথম ২৪ ঘণ্টাই রক্ষামূলক অ্যান্টিবডি শোষণ করতে পারে, এবং প্রথম ১-২ ঘণ্টায় শোষণ সর্বোচ্চ হয়। সময়মতো শালদুধ না পাওয়া বাছুরের কার্যত কোনো রোগ প্রতিরোধ ক্ষমতা থাকে না। প্রথম ২৪ ঘণ্টায় শরীরের ওজনের ১০% হিসেবে শালদুধ ২-৩ ভাগে খাওয়ান। ২৫ কেজির বাছুরের ২.৫ লিটার দরকার। ২য় দিন থেকে দুধ ছাড়ানো পর্যন্ত (৮-১২ সপ্তাহ) দিনে দুইবার শরীরের ওজনের ১০% হারে সম্পূর্ণ দুধ খাওয়ান।',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M05-calf-care' AND s.slug='M05-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'hi', 'खीस और पहला सप्ताह',
'खीस — गाढ़ा पीलापन पहला दूध — जन्म के एक घंटे के भीतर बछड़े को पिलाना चाहिए। यह खिड़की महत्वपूर्ण है: बछड़े की आंत जीवन के पहले 24 घंटों में ही सुरक्षात्मक एंटीबॉडी अवशोषित कर सकती है। जो बछड़ा समय पर खीस नहीं पाता उसमें लगभग कोई रोग प्रतिरोधक क्षमता नहीं होती। पहले 24 घंटों में शरीर के वजन का 10% खीस 2-3 बार में पिलाएं। 25 किग्रा बछड़े को 2.5 लीटर चाहिए। दूसरे दिन से दूध छुड़ाने (8-12 सप्ताह) तक प्रतिदिन दो बार शरीर के वजन का 10% पूरा दूध पिलाएं।',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M05-calf-care' AND s.slug='M05-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'en', 'Vaccination and Weaning',
'Vaccination schedule for calves: Day 1 — navel dressing (iodine solution). Week 2 — FMD first dose. Week 4 — BQ and HS first dose. Week 8 — FMD booster. Week 12 — BQ and HS booster. Deworming at 2 weeks, then every 3 months. Weaning at 8-12 weeks: start introducing calf starter (calf pellets) from week 2-3, 100-200 g daily, increasing to 500-700 g by week 8. Good calf starter intake at weaning means the calf rumen is ready — this is the key to smooth weaning. Weaning is complete when the calf eats at least 500 g concentrate per day for 3 consecutive days. After weaning, continue deworming every 3 months and monitor growth with weekly weight checks if possible.',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M05-calf-care' AND s.slug='M05-S2'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'bn', 'টিকা ও দুধ ছাড়ানো',
'বাছুরের টিকার সময়সূচি: ১ম দিন — নাভি পরিচর্যা (আয়োডিন)। ২য় সপ্তাহ — FMD প্রথম ডোজ। ৪র্থ সপ্তাহ — BQ ও HS প্রথম ডোজ। ৮ম সপ্তাহ — FMD বুস্টার। ১২তম সপ্তাহ — BQ ও HS বুস্টার। ২ সপ্তাহে কৃমিনাশক, তারপর প্রতি ৩ মাসে। ৮-১২ সপ্তাহে দুধ ছাড়ানো: ২-৩ সপ্তাহ থেকে বাছুর স্টার্টার (দানাদার খাদ্য) দেওয়া শুরু করুন, দৈনিক ১০০-২০০ গ্রাম, ৮ম সপ্তাহ পর্যন্ত ৫০০-৭০০ গ্রামে বাড়ান। ভালো স্টার্টার গ্রহণ মানে বাছুরের রুমেন প্রস্তুত। পরপর ৩ দিন প্রতিদিন ৫০০ গ্রাম খেলে দুধ ছাড়ানো সম্পূর্ণ।',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M05-calf-care' AND s.slug='M05-S2'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'hi', 'टीकाकरण और दूध छुड़ाना',
'बछड़े का टीकाकरण कार्यक्रम: पहला दिन — नाभि उपचार (आयोडीन)। दूसरा सप्ताह — FMD पहली खुराक। चौथा सप्ताह — BQ और HS पहली खुराक। आठवां सप्ताह — FMD बूस्टर। बारहवां सप्ताह — BQ और HS बूस्टर। 2 सप्ताह में कृमि उपचार, फिर हर 3 महीने। 8-12 सप्ताह में दूध छुड़ाना: 2-3 सप्ताह से बछड़ा स्टार्टर (दाना) देना शुरू करें, रोजाना 100-200 ग्राम, 8वें सप्ताह तक 500-700 ग्राम तक बढ़ाएं। जब बछड़ा लगातार 3 दिन 500 ग्राम खाए तो दूध छुड़ाना पूर्ण।',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M05-calf-care' AND s.slug='M05-S2'
ON CONFLICT (section_id, lang) DO NOTHING;
