-- 005i — M10 safety


-- ============================================================================
-- M10-safety — sections and content
-- ============================================================================

WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug='M10-safety')
INSERT INTO acharya_cowherd.crs_sections (module_id, slug, sort_order, estimated_hours)
SELECT mod.id, 'M10-S1', 1, 1.0 FROM mod ON CONFLICT (module_id, slug) DO NOTHING;

WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug='M10-safety')
INSERT INTO acharya_cowherd.crs_sections (module_id, slug, sort_order, estimated_hours)
SELECT mod.id, 'M10-S2', 2, 1.0 FROM mod ON CONFLICT (module_id, slug) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'en', 'Safe Approach and Handling',
'Never approach a horse or cow from directly behind — this is the primary kick zone. Always approach from the front or near the shoulder, at an angle, talking calmly as you approach so the animal knows you are there. For horses: stand to the left (near side) when leading or working — horses are trained to be handled from the left. When entering a stall, open the door, speak first, let the horse look at you, then enter. Never duck under the neck or squeeze past — if the animal spooks you are trapped. Halter fitting: the noseband should sit 2 finger-widths below the cheekbone. A halter that is too tight restricts breathing. Too loose and the horse can get a foot caught in it. Lead rope: hold 30-45 cm from the clip, never wrap around your hand — a spooked horse can drag you and break fingers.',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M10-safety' AND s.slug='M10-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'bn', 'নিরাপদ কাছে যাওয়া ও পরিচালনা',
'কখনো সরাসরি পিছন থেকে ঘোড়া বা গরুর কাছে যাবেন না — এটি প্রাথমিক লাথির জায়গা। সর্বদা সামনে বা কাঁধের কাছ থেকে, কোণে এবং শান্তভাবে কথা বলতে বলতে যান যাতে পশু বুঝতে পারে আপনি সেখানে আছেন। ঘোড়ার জন্য: নেতৃত্ব দেওয়া বা কাজ করার সময় বাম দিকে (কাছের দিকে) দাঁড়ান। যখন ঘরে প্রবেশ করবেন, দরজা খুলুন, প্রথমে কথা বলুন, ঘোড়াকে দেখতে দিন, তারপর প্রবেশ করুন। হ্যালটার ফিটিং: নাকের বন্ধন গালের হাড়ের ২ আঙুল নিচে থাকা উচিত। সীসার দড়ি: ক্লিপ থেকে ৩০-৪৫ সেমি ধরুন, কখনো হাতের চারপাশে মুড়বেন না।',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M10-safety' AND s.slug='M10-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'hi', 'सुरक्षित पास जाना और संभाल',
'कभी भी सीधे पीछे से घोड़े या गाय के पास न जाएं — यह प्राथमिक लात क्षेत्र है। हमेशा सामने या कंधे के पास से, एक कोण पर, शांति से बात करते हुए जाएं। घोड़े के लिए: नेतृत्व करते या काम करते समय बाईं (पास की) तरफ खड़े हों। स्टॉल में प्रवेश करते समय: दरवाजा खोलें, पहले बोलें, घोड़े को देखने दें, फिर अंदर जाएं। हॉल्टर फिटिंग: नाक का पट्टा गाल की हड्डी से 2 उंगली नीचे। लीड रोप: क्लिप से 30-45 सेमी पकड़ें, कभी हाथ के चारों ओर न लपेटें।',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M10-safety' AND s.slug='M10-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'en', 'Cattle Crush and Emergency Procedures',
'The cattle crush (chute) is a metal or wooden restraint device for immobilizing cattle during treatment, vaccination, or examination. Always ensure the crush is on flat, stable ground before use. Open the head gate and tail gate before the animal enters. Guide the animal in calmly — never force or chase. Once in position, close the head gate first, then the body restraint. Keep the animal calm — covering its eyes reduces stress. During any procedure with a confined animal, position yourself to the side of the head — not in front where a struggling animal can break out and strike you. Emergency escape: know where the quick-release lever is on your crush before every use. If an animal goes down inside the crush, open the side door immediately and support the animal to prevent suffocation. Always work with a second person when using the crush.',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M10-safety' AND s.slug='M10-S2'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'bn', 'ক্যাটেল ক্রাশ ও জরুরি পদ্ধতি',
'ক্যাটেল ক্রাশ (চুট) হলো চিকিৎসা, টিকা বা পরীক্ষার সময় গবাদি পশুকে স্থির রাখার জন্য একটি ধাতব বা কাঠের যন্ত্র। ব্যবহারের আগে সর্বদা নিশ্চিত করুন ক্রাশটি সমতল, স্থিতিশীল মাটিতে আছে। পশু প্রবেশের আগে মাথা গেট ও লেজ গেট খুলুন। পশুকে শান্তভাবে ভেতরে নিয়ে যান — কখনো জোর করবেন না বা তাড়াবেন না। একবার অবস্থানে এলে, প্রথমে মাথা গেট বন্ধ করুন। যেকোনো পদ্ধতির সময় মাথার পাশে অবস্থান করুন — সামনে নয়। জরুরি অবস্থা: প্রতিটি ব্যবহারের আগে কুইক-রিলিজ লিভার কোথায় তা জানুন। ক্রাশের ভেতরে পশু শুয়ে পড়লে অবিলম্বে পাশের দরজা খুলুন।',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M10-safety' AND s.slug='M10-S2'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'hi', 'पशु क्रश और आपातकालीन प्रक्रियाएं',
'पशु क्रश (चुट) उपचार, टीकाकरण या जांच के दौरान मवेशियों को स्थिर करने के लिए एक धातु या लकड़ी का उपकरण है। उपयोग से पहले सुनिश्चित करें कि क्रश समतल, स्थिर जमीन पर है। जानवर के प्रवेश से पहले सिर का गेट और पूंछ का गेट खोलें। जानवर को शांति से अंदर ले जाएं — कभी जबरदस्ती न करें। एक बार स्थिति में आने के बाद पहले सिर का गेट बंद करें। किसी भी प्रक्रिया के दौरान सिर के किनारे खड़े हों — सामने नहीं। आपातकालीन: हर उपयोग से पहले क्विक-रिलीज लीवर की जगह जानें। क्रश के अंदर जानवर गिर जाए तो तुरंत साइड दरवाजा खोलें।',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M10-safety' AND s.slug='M10-S2'
ON CONFLICT (section_id, lang) DO NOTHING;
