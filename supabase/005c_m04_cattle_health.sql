-- 005c — M04 cattle health


-- ============================================================================
-- M04-cattle-health — sections and content
-- ============================================================================

WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug='M04-cattle-health')
INSERT INTO acharya_cowherd.crs_sections (module_id, slug, sort_order, estimated_hours)
SELECT mod.id, 'M04-S1', 1, 1.5 FROM mod ON CONFLICT DO NOTHING;

WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug='M04-cattle-health')
INSERT INTO acharya_cowherd.crs_sections (module_id, slug, sort_order, estimated_hours)
SELECT mod.id, 'M04-S2', 2, 1.5 FROM mod ON CONFLICT DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'en', 'Common Diseases: FMD, HS and BQ',
'Foot and Mouth Disease (FMD): Highly contagious viral disease. Signs — blisters on tongue, gums, feet, between toes, teats, drooling, lameness, reduced milk. No cure — treat symptoms, isolate immediately, disinfect shed, report to vet. Vaccinate all cattle every 6 months. Hemorrhagic Septicemia (HS): Bacterial (Pasteurella). Signs — sudden high fever (104-106°F), difficulty breathing, swelling under jaw and brisket, animal may die within 24 hours. Vaccinate before monsoon season. Treat with antibiotics only under vet direction. Black Quarter (BQ): Soil-borne bacterial disease. Affects young cattle 6 months to 2 years. Signs — sudden lameness, hot painful swelling of thigh or shoulder muscle, crackling sound when pressed (gas gangrene), animal may die within 12-24 hours. Vaccinate annually before monsoon.',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M04-cattle-health' AND s.slug='M04-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'bn', 'সাধারণ রোগ: FMD, HS ও BQ',
'পায়ের খুরা ও মুখের রোগ (FMD): অত্যন্ত সংক্রামক ভাইরাসজনিত রোগ। লক্ষণ — জিভ, মাড়ি, পায়ের আঙুলের মাঝে, আঁটিতে ফোসকা, লালা ঝরা, খোঁড়ানো, দুধ কমে যাওয়া। কোনো নিরাময় নেই — লক্ষণের চিকিৎসা করুন, অবিলম্বে আলাদা করুন, গোয়ালঘর জীবাণুমুক্ত করুন। প্রতি ৬ মাসে সব গবাদি পশুকে টিকা দিন। রক্তক্ষরী সেপ্টিসেমিয়া (HS): ব্যাকটেরিয়াজনিত। লক্ষণ — হঠাৎ তীব্র জ্বর (১০৪-১০৬°F), শ্বাসকষ্ট, চোয়াল ও বুকে ফোলা, ২৪ ঘণ্টার মধ্যে মৃত্যু হতে পারে। বর্ষার আগে টিকা দিন। কালো পা (BQ): মাটিতে থাকা ব্যাকটেরিয়াজনিত রোগ। ৬ মাস থেকে ২ বছর বয়সী তরুণ গবাদি পশুদের প্রভাবিত করে। লক্ষণ — হঠাৎ খোঁড়ানো, উরু বা কাঁধের পেশিতে গরম যন্ত্রণাদায়ক ফোলা, চাপ দিলে চড়চড় শব্দ। বার্ষিক টিকা দিন।',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M04-cattle-health' AND s.slug='M04-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'hi', 'सामान्य रोग: FMD, HS और BQ',
'खुरपका-मुंहपका रोग (FMD): अत्यधिक संक्रामक वायरल रोग। लक्षण — जीभ, मसूड़ों, खुरों के बीच, थनों पर छाले, लार टपकना, लंगड़ापन, दूध में कमी। कोई इलाज नहीं — लक्षणों का उपचार करें, तुरंत अलग करें। हर 6 महीने में टीका लगाएं। रक्तस्रावी सेप्टिसीमिया (HS): जीवाणुजनित। लक्षण — अचानक तेज बुखार (104-106°F), सांस लेने में तकलीफ, जबड़े के नीचे सूजन, 24 घंटे में मृत्यु हो सकती है। मानसून से पहले टीका लगाएं। काली टांग (BQ): मिट्टी से जनित जीवाणु रोग। 6 माह से 2 वर्ष के युवा पशुओं को प्रभावित करता है। जांघ या कंधे में गर्म दर्दनाक सूजन, दबाने पर कड़-कड़ की आवाज। हर साल मानसून से पहले टीका लगाएं।',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M04-cattle-health' AND s.slug='M04-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'en', 'Mastitis and Bloat',
'Mastitis: Inflammation of the udder. Signs — one or more quarters hard, hot, swollen, or painful. Milk has clots, blood, or watery appearance. Cow flinches or kicks during milking. Caused by bacteria entering through the teat canal. Prevention is better than cure: teat dip after every milking, dry cow therapy at end of lactation, clean bedding, avoid trauma to udder. Treat only with antibiotics prescribed by vet. Discard antibiotic-treated milk per vet instruction. Bloat: Gas accumulation in rumen. Signs — left side of belly distended and drum-like, animal restless, grinding teeth, difficulty breathing, drooling. Caused by eating too much wet legume fodder (berseem, lucerne) without enough dry roughage. Emergency first response: walk the animal, massage the rumen, call vet. Prevent by limiting access to wet legumes and always providing dry roughage first.',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M04-cattle-health' AND s.slug='M04-S2'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'bn', 'ম্যাস্টাইটিস ও ফাঁপা',
'ম্যাস্টাইটিস: ওলানের প্রদাহ। লক্ষণ — এক বা একাধিক ভাগ শক্ত, গরম, ফোলা বা ব্যথাযুক্ত। দুধে জমাট, রক্ত বা পানিয়া। আঁটি খাল দিয়ে ব্যাকটেরিয়া প্রবেশের কারণে হয়। প্রতিরোধ সর্বোত্তম: প্রতিটি দোহানোর পরে টিট ডিপ, পরিষ্কার বিছানা। ফাঁপা: রুমেনে গ্যাস জমা। লক্ষণ — পেটের বাম পাশ ফোলা ও ঢোলের মতো, পশু অস্থির, দাঁত পিষছে, শ্বাসকষ্ট। বেশি ভেজা শিম জাতীয় খাদ্য (বার্সিম, লুসার্ন) খাওয়ার কারণে। জরুরি প্রতিক্রিয়া: পশু হাঁটান, রুমেন ম্যাসাজ করুন, ভেটকে ডাকুন।',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M04-cattle-health' AND s.slug='M04-S2'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'hi', 'मास्टाइटिस और अफारा',
'मास्टाइटिस: थन की सूजन। लक्षण — एक या अधिक तिमाई कठोर, गर्म, सूजी या दर्दनाक। दूध में थक्के, खून या पानीपन। थनी नलिका से बैक्टीरिया प्रवेश के कारण। रोकथाम: हर दूध दुहने के बाद थन डुबाव, साफ बिछावन। अफारा: रुमेन में गैस जमाव। लक्षण — पेट का बायां हिस्सा ढोल जैसा फूला हुआ, पशु बेचैन, दांत पीसना, सांस लेने में तकलीफ। अधिक गीली फलीदार घास खाने से होता है। आपातकालीन: पशु को चलाएं, रुमेन की मालिश करें, पशु चिकित्सक को बुलाएं।',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M04-cattle-health' AND s.slug='M04-S2'
ON CONFLICT (section_id, lang) DO NOTHING;
