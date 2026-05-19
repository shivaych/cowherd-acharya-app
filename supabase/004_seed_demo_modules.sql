-- ============================================================================
-- 004 — Demo modules for Cowherd Acharya (Gopal persona)
-- Run in Supabase SQL editor after 001 + 002 migrations
-- ============================================================================

-- ---------------------------------------------------------------------------
-- Modules
-- ---------------------------------------------------------------------------

INSERT INTO acharya_cowherd.crs_modules
  (slug, sort_order, theory_hours, practical_hours, icon, group_key, group_label_en, group_label_bn, group_label_hi)
VALUES
  ('M01-daily-care',    1, 2.0, 3.0, '🌅', 'cattle', 'Cattle Care', 'গবাদি পশুর যত্ন', 'पशु देखभाल'),
  ('M02-feeding',       2, 2.0, 2.0, '🌾', 'cattle', 'Cattle Care', 'গবাদি পশুর যত্ন', 'पशु देखभाल'),
  ('M03-milking',       3, 1.5, 2.5, '🥛', 'cattle', 'Cattle Care', 'গবাদি পশুর যত্ন', 'पशु देखभाल'),
  ('M04-cattle-health', 4, 3.0, 2.0, '💉', 'cattle', 'Cattle Care', 'গবাদি পশুর যত্ন', 'पशु देखभाल'),
  ('M05-calf-care',     5, 2.0, 2.0, '🐄', 'cattle', 'Cattle Care', 'গবাদি পশুর যত্ন', 'पशु देखभाल'),
  ('M06-horse-stable',  6, 2.0, 3.0, '🏠', 'horse',  'Horse Care',  'ঘোড়ার যত্ন',      'घोड़ा देखभाल'),
  ('M07-horse-feeding', 7, 1.5, 1.5, '🌿', 'horse',  'Horse Care',  'ঘোড়ার যত্ন',      'घोड़ा देखभाल'),
  ('M08-horse-health',  8, 2.5, 2.0, '🩺', 'horse',  'Horse Care',  'ঘোড়ার যত্ন',      'घोड़ा देखभाल'),
  ('M09-grooming',      9, 1.0, 2.0, '✂️', 'horse',  'Horse Care',  'ঘোড়ার যত্ন',      'घोड़ा देखभाल'),
  ('M10-safety',       10, 2.0, 1.0, '⚠️', 'general','General',     'সাধারণ',           'सामान्य')
ON CONFLICT (slug) DO NOTHING;

-- ---------------------------------------------------------------------------
-- Module translations
-- ---------------------------------------------------------------------------

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'en', 'Daily Care Routine', 'Morning to evening schedule for cows and buffaloes', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M01-daily-care' ON CONFLICT (module_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'bn', 'দৈনিক যত্নের রুটিন', 'গরু ও মহিষের সকাল থেকে সন্ধ্যার সময়সূচি', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M01-daily-care' ON CONFLICT (module_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'hi', 'दैनिक देखभाल की दिनचर्या', 'गाय और भैंस की सुबह से शाम तक की दिनचर्या', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M01-daily-care' ON CONFLICT (module_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'en', 'Feeding & Nutrition', 'Dry fodder, green fodder, concentrate and mineral requirements', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M02-feeding' ON CONFLICT (module_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'bn', 'খাদ্য ও পুষ্টি', 'শুকনো খাদ্য, সবুজ খাদ্য, ঘন খাদ্য ও খনিজের প্রয়োজনীয়তা', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M02-feeding' ON CONFLICT (module_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'hi', 'आहार और पोषण', 'सूखा चारा, हरा चारा, सांद्र और खनिज की आवश्यकताएं', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M02-feeding' ON CONFLICT (module_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'en', 'Milking Techniques', 'Hygienic milking, udder care and mastitis prevention', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M03-milking' ON CONFLICT (module_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'bn', 'দুধ দোহানোর কৌশল', 'পরিষ্কার দুধ দোহানো, ওলানের যত্ন ও ম্যাস্টাইটিস প্রতিরোধ', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M03-milking' ON CONFLICT (module_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'hi', 'दूध दुहने की तकनीक', 'स्वच्छ दूध दुहना, थन की देखभाल और मास्टाइटिस रोकथाम', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M03-milking' ON CONFLICT (module_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'en', 'Cattle Health & Disease', 'Common diseases — FMD, HS, BQ, mastitis, bloat and vaccination', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M04-cattle-health' ON CONFLICT (module_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'bn', 'গবাদি পশুর স্বাস্থ্য ও রোগ', 'সাধারণ রোগ — FMD, HS, BQ, ম্যাস্টাইটিস, ফাঁপা ও টিকা', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M04-cattle-health' ON CONFLICT (module_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'hi', 'पशु स्वास्थ्य और रोग', 'सामान्य रोग — FMD, HS, BQ, मास्टाइटिस, अफारा और टीकाकरण', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M04-cattle-health' ON CONFLICT (module_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'en', 'Calf Care & Rearing', 'Colostrum, vaccination schedule, weaning and growth monitoring', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M05-calf-care' ON CONFLICT (module_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'bn', 'বাছুরের যত্ন ও লালন', 'শালদুধ, টিকার সময়সূচি, দুধ ছাড়ানো ও বৃদ্ধি পর্যবেক্ষণ', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M05-calf-care' ON CONFLICT (module_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'hi', 'बछड़े की देखभाल', 'खीस दूध, टीकाकरण कार्यक्रम, दूध छुड़ाना और वृद्धि निगरानी', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M05-calf-care' ON CONFLICT (module_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'en', 'Horse Stable Management', 'Stall size, bedding, ventilation, water and hygiene', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M06-horse-stable' ON CONFLICT (module_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'bn', 'ঘোড়ার আস্তাবল ব্যবস্থাপনা', 'ঘরের আকার, বিছানা, বায়ু চলাচল, পানি ও পরিষ্কার-পরিচ্ছন্নতা', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M06-horse-stable' ON CONFLICT (module_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'hi', 'घोड़े की अस्तबल प्रबंधन', 'स्टॉल का आकार, बिछावन, हवादारी, पानी और स्वच्छता', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M06-horse-stable' ON CONFLICT (module_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'en', 'Horse Feeding', 'Hay, concentrates, feeding schedule and colic prevention', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M07-horse-feeding' ON CONFLICT (module_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'bn', 'ঘোড়ার খাদ্য', 'খড়, ঘন খাদ্য, খাওয়ানোর সময়সূচি ও কোলিক প্রতিরোধ', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M07-horse-feeding' ON CONFLICT (module_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'hi', 'घोड़े का आहार', 'घास, सांद्र, खिलाने का कार्यक्रम और कोलिक रोकथाम', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M07-horse-feeding' ON CONFLICT (module_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'en', 'Horse Health Issues', 'Colic, laminitis, tetanus, worms, thrush and wound care', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M08-horse-health' ON CONFLICT (module_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'bn', 'ঘোড়ার স্বাস্থ্য সমস্যা', 'কোলিক, ল্যামিনাইটিস, টিটেনাস, কৃমি, থ্রাশ ও ক্ষত যত্ন', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M08-horse-health' ON CONFLICT (module_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'hi', 'घोड़े की स्वास्थ्य समस्याएं', 'कोलिक, लैमिनाइटिस, टेटनस, कृमि, थ्रश और घाव की देखभाल', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M08-horse-health' ON CONFLICT (module_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'en', 'Grooming & Hoof Care', 'Daily grooming tools, techniques, hoof picking and farrier schedule', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M09-grooming' ON CONFLICT (module_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'bn', 'সাজসজ্জা ও খুরের যত্ন', 'দৈনিক সাজসজ্জার সরঞ্জাম, কৌশল, খুর পরিষ্কার ও নালবন্দের সময়সূচি', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M09-grooming' ON CONFLICT (module_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'hi', 'सौंदर्य और खुर की देखभाल', 'दैनिक सौंदर्य उपकरण, तकनीक, खुर सफाई और नालबंद कार्यक्रम', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M09-grooming' ON CONFLICT (module_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'en', 'Safety Around Large Animals', 'Approach techniques, halter use, kick zones and emergency handling', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M10-safety' ON CONFLICT (module_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'bn', 'বড় পশুর কাছে নিরাপত্তা', 'কাছে যাওয়ার কৌশল, হ্যালটার ব্যবহার, কিক জোন ও জরুরি পরিস্থিতি', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M10-safety' ON CONFLICT (module_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_module_tr (module_id, lang, title, short_desc, status)
SELECT id, 'hi', 'बड़े जानवरों के पास सुरक्षा', 'पास जाने की तकनीक, हॉल्टर उपयोग, किक जोन और आपातकालीन संभाल', 'published'
FROM acharya_cowherd.crs_modules WHERE slug='M10-safety' ON CONFLICT (module_id, lang) DO NOTHING;

-- ---------------------------------------------------------------------------
-- Sections for M01-daily-care
-- ---------------------------------------------------------------------------

WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug='M01-daily-care')
INSERT INTO acharya_cowherd.crs_sections (module_id, slug, sort_order, estimated_hours)
SELECT mod.id, 'M01-S1', 1, 1.0 FROM mod
ON CONFLICT DO NOTHING;

WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug='M01-daily-care')
INSERT INTO acharya_cowherd.crs_sections (module_id, slug, sort_order, estimated_hours)
SELECT mod.id, 'M01-S2', 2, 1.0 FROM mod
ON CONFLICT DO NOTHING;

WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug='M01-daily-care')
INSERT INTO acharya_cowherd.crs_sections (module_id, slug, sort_order, estimated_hours)
SELECT mod.id, 'M01-S3', 3, 1.0 FROM mod
ON CONFLICT DO NOTHING;

-- Section translations for M01-S1
INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'en',
  'Morning Routine',
  'Start the day at sunrise. First task — clean the shed. Remove all dung and wet bedding before the animals are fed. Dung left overnight causes ammonia gas which harms the animals lungs. Use a scraper and wheelbarrow. Wash the floor with water and a mild phenyl solution weekly. After cleaning, check each animal — look at eyes, nose, dung consistency, and how they stand. A healthy cow stands straight and is alert. If an animal is hunched, off-feed, or has loose dung, note it and inform the supervisor. Provide fresh water before feed — an empty water trough in the morning is the most common mistake new caretakers make. Change water at minimum twice daily.',
  'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M01-daily-care' AND s.slug='M01-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'bn',
  'সকালের রুটিন',
  'সূর্যোদয়ের সাথে সাথে দিন শুরু করুন। প্রথম কাজ হলো গোয়ালঘর পরিষ্কার করা। পশুদের খাওয়ানোর আগে সমস্ত গোবর এবং ভেজা বিছানা সরিয়ে ফেলুন। রাতভর গোবর পড়ে থাকলে অ্যামোনিয়া গ্যাস তৈরি হয় যা পশুর ফুসফুসের ক্ষতি করে। স্ক্রেপার ও ঠেলাগাড়ি ব্যবহার করুন। সপ্তাহে একবার জল এবং হালকা ফিনাইল দিয়ে মেঝে ধুয়ে নিন। পরিষ্কারের পরে প্রতিটি পশু পরীক্ষা করুন — চোখ, নাক, গোবরের ধারাবাহিকতা এবং তারা কীভাবে দাঁড়িয়ে আছে তা দেখুন। একটি সুস্থ গরু সোজা দাঁড়ায় এবং সতর্ক থাকে। যদি কোনো পশু কুঁজো হয়, খাবার না খায় বা পাতলা গোবর করে, তাহলে নোট করুন এবং উপরওয়ালাকে জানান। খাওয়ানোর আগে তাজা জল দিন — সকালে খালি জলের পাত্র হলো নতুন পরিচর্যাকারীদের সবচেয়ে সাধারণ ভুল।',
  'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M01-daily-care' AND s.slug='M01-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'hi',
  'सुबह की दिनचर्या',
  'सूर्योदय के साथ दिन शुरू करें। पहला काम है गोशाला की सफाई। पशुओं को चारा देने से पहले सभी गोबर और गीली बिछावन हटा दें। रात भर पड़ा गोबर अमोनिया गैस बनाता है जो पशुओं के फेफड़ों को नुकसान पहुंचाता है। स्क्रेपर और व्हीलबैरो का उपयोग करें। हफ्ते में एक बार पानी और हल्के फिनाइल से फर्श धोएं। सफाई के बाद हर पशु की जांच करें — आंखें, नाक, गोबर की स्थिरता और वे कैसे खड़े हैं। एक स्वस्थ गाय सीधी खड़ी होती है और सतर्क रहती है। यदि कोई पशु झुका हुआ हो, चारा न खाए या पतला गोबर करे, तो नोट करें और पर्यवेक्षक को बताएं। चारे से पहले ताजा पानी दें।',
  'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M01-daily-care' AND s.slug='M01-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

-- Section translations for M01-S2
INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'en',
  'Midday Checks',
  'Between 11am and 1pm, walk through the shed or pasture once. You are not doing a full inspection — you are looking for anything obviously wrong. Check the water supply. In summer, cows drink 40 to 50 litres per day — the trough should never run dry. Observe grazing animals from a distance. Is any animal standing apart from the herd? That is an early warning sign. An animal that separates from the group is usually in pain or starting a fever. Shade must be available in summer — animals standing in direct sun in peak heat will lose milk production and are at risk of heat stroke. If the animal is pregnant and close to calving, check her at least three times during the day for signs of labour.',
  'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M01-daily-care' AND s.slug='M01-S2'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'bn',
  'দুপুরের পরীক্ষা',
  'সকাল ১১টা থেকে দুপুর ১টার মধ্যে একবার গোয়ালঘর বা চারণভূমিতে হেঁটে দেখুন। আপনি পূর্ণাঙ্গ পরীক্ষা করছেন না — স্পষ্টভাবে কোনো সমস্যা আছে কিনা দেখছেন। জলের সরবরাহ পরীক্ষা করুন। গ্রীষ্মে গরু প্রতিদিন ৪০ থেকে ৫০ লিটার জল পান করে — হাউদা কখনো শুকিয়ে যাওয়া উচিত নয়। দূর থেকে চরতে থাকা পশুদের দেখুন। কোনো পশু কি পালের বাইরে একা দাঁড়িয়ে আছে? এটি প্রাথমিক সতর্কতার চিহ্ন। পাল থেকে আলাদা হওয়া পশু সাধারণত ব্যথায় আছে বা জ্বর শুরু হয়েছে। গ্রীষ্মে ছায়া থাকা আবশ্যক — দুপুরে সরাসরি রোদে দাঁড়ানো পশু দুধ কমিয়ে দেবে এবং হিট স্ট্রোকের ঝুঁকিতে থাকবে।',
  'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M01-daily-care' AND s.slug='M01-S2'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'hi',
  'दोपहर की जांच',
  'सुबह 11 बजे से दोपहर 1 बजे के बीच एक बार गोशाला या चरागाह से गुजरें। आप पूरी जांच नहीं कर रहे — बस कोई स्पष्ट समस्या देख रहे हैं। पानी की आपूर्ति जांचें। गर्मियों में गाएं प्रति दिन 40 से 50 लीटर पानी पीती हैं — हौद कभी खाली नहीं होनी चाहिए। दूर से चरते पशुओं को देखें। क्या कोई पशु झुंड से अलग खड़ा है? यह प्रारंभिक चेतावनी का संकेत है। झुंड से अलग होने वाला पशु आमतौर पर दर्द में होता है या बुखार शुरू हो रहा होता है। गर्मियों में छाया जरूरी है — दोपहर की तेज धूप में खड़े पशु का दूध उत्पादन कम होगा और हीट स्ट्रोक का खतरा रहेगा।',
  'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M01-daily-care' AND s.slug='M01-S2'
ON CONFLICT (section_id, lang) DO NOTHING;

-- Section translations for M01-S3
INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'en',
  'Evening Routine',
  'Evening is the busiest part of the day. Bring animals in from pasture before sunset — do not leave them outside overnight. Count the herd as they come in. Evening milking comes first for dairy animals — milk before feeding concentrate. Feed roughage after milking. Always tie the animal securely before milking. After milking, apply iodine teat dip to prevent mastitis. Evening feed should be given at the same time every day — animals are creatures of habit and irregular feeding times cause stress and drop in milk production. Final task — check bedding is dry, no sharp objects on floor, shed gate is secure, and water trough is full for the night.',
  'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M01-daily-care' AND s.slug='M01-S3'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'bn',
  'সন্ধ্যার রুটিন',
  'সন্ধ্যা হলো দিনের সবচেয়ে ব্যস্ত সময়। সূর্যাস্তের আগে পশুদের চারণভূমি থেকে নিয়ে আসুন — তাদের বাইরে রাত কাটাতে দেবেন না। আসার সময় পালের সংখ্যা গণনা করুন। দুগ্ধ পশুদের জন্য প্রথমে সন্ধ্যার দুধ দোহানো — ঘন খাদ্য দেওয়ার আগেই দুধ নিন। দোহানোর পরে শুকনো খাদ্য দিন। দোহানোর আগে সর্বদা পশুকে ভালোভাবে বেঁধে রাখুন। দোহানোর পরে ম্যাস্টাইটিস প্রতিরোধে আঁটির মধ্যে আয়োডিন দ্রবণ লাগান। সন্ধ্যার খাদ্য প্রতিদিন একই সময়ে দিতে হবে — পশু অভ্যাসের প্রাণী এবং অনিয়মিত খাওয়ানো মানসিক চাপ ও দুধ কমায়।',
  'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M01-daily-care' AND s.slug='M01-S3'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'hi',
  'शाम की दिनचर्या',
  'शाम दिन का सबसे व्यस्त हिस्सा है। सूर्यास्त से पहले पशुओं को चरागाह से लाएं — उन्हें रात में बाहर न छोड़ें। आते समय झुंड की गिनती करें। डेयरी पशुओं के लिए पहले शाम का दूध दुहें — सांद्र चारा देने से पहले दूध लें। दूध दुहने के बाद रूखा चारा दें। दूध दुहने से पहले पशु को हमेशा अच्छी तरह बांधें। दूध दुहने के बाद मास्टाइटिस से बचाव के लिए थनों पर आयोडीन घोल लगाएं। शाम का चारा हर दिन एक ही समय पर दें — पशु आदत के प्राणी हैं और अनियमित खिलाने से तनाव और दूध में कमी होती है।',
  'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M01-daily-care' AND s.slug='M01-S3'
ON CONFLICT (section_id, lang) DO NOTHING;

-- ---------------------------------------------------------------------------
-- Sections for M02-feeding (titles only — body content to be added via admin)
-- ---------------------------------------------------------------------------

WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug='M02-feeding')
INSERT INTO acharya_cowherd.crs_sections (module_id, slug, sort_order, estimated_hours)
SELECT mod.id, 'M02-S1', 1, 1.0 FROM mod ON CONFLICT DO NOTHING;

WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug='M02-feeding')
INSERT INTO acharya_cowherd.crs_sections (module_id, slug, sort_order, estimated_hours)
SELECT mod.id, 'M02-S2', 2, 1.0 FROM mod ON CONFLICT DO NOTHING;

WITH sec AS (
  SELECT s.id FROM acharya_cowherd.crs_sections s
  JOIN acharya_cowherd.crs_modules m ON s.module_id=m.id
  WHERE m.slug='M02-feeding' AND s.slug='M02-S1'
)
INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, status)
SELECT sec.id, 'en', 'Types of Fodder', 'draft' FROM sec ON CONFLICT (section_id, lang) DO NOTHING;

WITH sec AS (
  SELECT s.id FROM acharya_cowherd.crs_sections s
  JOIN acharya_cowherd.crs_modules m ON s.module_id=m.id
  WHERE m.slug='M02-feeding' AND s.slug='M02-S1'
)
INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, status)
SELECT sec.id, 'bn', 'খাদ্যের ধরন', 'draft' FROM sec ON CONFLICT (section_id, lang) DO NOTHING;

WITH sec AS (
  SELECT s.id FROM acharya_cowherd.crs_sections s
  JOIN acharya_cowherd.crs_modules m ON s.module_id=m.id
  WHERE m.slug='M02-feeding' AND s.slug='M02-S1'
)
INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, status)
SELECT sec.id, 'hi', 'चारे के प्रकार', 'draft' FROM sec ON CONFLICT (section_id, lang) DO NOTHING;

WITH sec AS (
  SELECT s.id FROM acharya_cowherd.crs_sections s
  JOIN acharya_cowherd.crs_modules m ON s.module_id=m.id
  WHERE m.slug='M02-feeding' AND s.slug='M02-S2'
)
INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, status)
SELECT sec.id, 'en', 'Quantities and Schedule', 'draft' FROM sec ON CONFLICT (section_id, lang) DO NOTHING;

WITH sec AS (
  SELECT s.id FROM acharya_cowherd.crs_sections s
  JOIN acharya_cowherd.crs_modules m ON s.module_id=m.id
  WHERE m.slug='M02-feeding' AND s.slug='M02-S2'
)
INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, status)
SELECT sec.id, 'bn', 'পরিমাণ ও সময়সূচি', 'draft' FROM sec ON CONFLICT (section_id, lang) DO NOTHING;

WITH sec AS (
  SELECT s.id FROM acharya_cowherd.crs_sections s
  JOIN acharya_cowherd.crs_modules m ON s.module_id=m.id
  WHERE m.slug='M02-feeding' AND s.slug='M02-S2'
)
INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, status)
SELECT sec.id, 'hi', 'मात्रा और कार्यक्रम', 'draft' FROM sec ON CONFLICT (section_id, lang) DO NOTHING;
