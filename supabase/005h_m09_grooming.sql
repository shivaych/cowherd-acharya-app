-- 005h — M09 grooming


-- ============================================================================
-- M09-grooming — sections and content
-- ============================================================================

WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug='M09-grooming')
INSERT INTO acharya_cowherd.crs_sections (module_id, slug, sort_order, estimated_hours)
SELECT mod.id, 'M09-S1', 1, 1.0 FROM mod ON CONFLICT DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'en', 'Grooming Sequence and Hoof Care',
'Groom daily before exercise. Work from head to tail on one side, then the other. Tools and order: (1) Curry comb — circular scrubbing motion on neck, shoulders, barrel, quarters to loosen dirt and dead hair. Never use on legs, face, or bony areas. (2) Dandy brush — stiff bristles to flick away loosened debris, same areas. (3) Body brush — soft bristles, full body including face and legs. (4) Mane and tail comb or brush — detangle gently from the bottom up. (5) Hoof pick — clean each hoof from heel to toe, checking for thrush (black foul-smelling material in frog), loose shoes, or cracks. Hoof care: pick hooves at every grooming. Apply hoof oil weekly if hooves are dry. Schedule farrier visit every 6-8 weeks for trimming and re-shoeing. Never leave a loose or sprung shoe — call farrier immediately.',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M09-grooming' AND s.slug='M09-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'bn', 'সাজসজ্জার ক্রম ও খুরের যত্ন',
'ব্যায়ামের আগে প্রতিদিন সাজান। মাথা থেকে লেজ পর্যন্ত এক পাশে কাজ করুন, তারপর অন্য পাশে। সরঞ্জাম ও ক্রম: (১) কারি কম্ব — ঘাড়, কাঁধ, পেট, পিছনে বৃত্তাকার ঘষার গতিতে। পায়ে, মুখে বা হাড়ের জায়গায় ব্যবহার করবেন না। (২) ড্যান্ডি ব্রাশ — শক্ত শলার সেই একই জায়গায়। (৩) বডি ব্রাশ — নরম শলা, মুখ ও পা সহ পুরো শরীর। (৪) মেন ও লেজ চিরুনি — নিচ থেকে উপরে। (৫) খুর পিক — গোড়া থেকে পায়ের আঙুল পর্যন্ত প্রতিটি খুর পরিষ্কার করুন, থ্রাশ (ফ্রগে কালো দুর্গন্ধযুক্ত উপাদান), ঢিলা নাল বা ফাটল পরীক্ষা করুন। প্রতি ৬-৮ সপ্তাহে নালবন্দের সময়সূচি দিন।',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M09-grooming' AND s.slug='M09-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'hi', 'सौंदर्य क्रम और खुर की देखभाल',
'व्यायाम से पहले रोज सजाएं। सिर से पूंछ तक एक तरफ काम करें, फिर दूसरी तरफ। उपकरण और क्रम: (1) करी कंघी — गर्दन, कंधे, पेट, पिछले हिस्से पर गोलाकार रगड़ने की गति। पैरों, चेहरे या हड्डी वाले क्षेत्रों पर उपयोग न करें। (2) डैंडी ब्रश — कड़े बालों से उन्हीं क्षेत्रों पर। (3) बॉडी ब्रश — मुलायम बाल, चेहरे और पैरों सहित पूरे शरीर। (4) मेन और पूंछ कंघी — नीचे से ऊपर। (5) खुर पिक — एड़ी से नोक तक प्रत्येक खुर साफ करें, थ्रश, ढीली नाल या दरारें जांचें। हर 6-8 सप्ताह में नालबंद को बुलाएं।',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M09-grooming' AND s.slug='M09-S1'
ON CONFLICT (section_id, lang) DO NOTHING;
