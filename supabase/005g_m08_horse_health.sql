-- 005g — M08 horse health


-- ============================================================================
-- M08-horse-health — sections and content
-- ============================================================================

WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug='M08-horse-health')
INSERT INTO acharya_cowherd.crs_sections (module_id, slug, sort_order, estimated_hours)
SELECT mod.id, 'M08-S1', 1, 1.5 FROM mod ON CONFLICT (module_id, slug) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'en', 'Colic, Laminitis and Common Conditions',
$body$Colic (abdominal pain) is the leading cause of death in horses. Signs: pawing the ground, looking at flank, rolling, refusing to eat, sweating without exercise, elevated heart rate (normal is 28-44 bpm). First response: do not let the horse roll violently — it can cause gut twist. Walk the horse quietly. Call the vet immediately — colic can be fatal within hours. Do not give pain medication without vet instruction. Laminitis: painful inflammation of the hoof laminae. Signs: standing with front feet stretched forward, reluctance to walk, feet hot to touch. Cause: too much grain, lush grass, or Cushing disease. Emergency: cold water hose feet, rest on deep soft bedding, call vet. Prevention: never allow sudden access to large amounts of grain or fresh grass. Tetanus: always keep vaccination current — horses are highly susceptible and tetanus is almost always fatal.$body$,
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M08-horse-health' AND s.slug='M08-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'bn', 'কোলিক, ল্যামিনাইটিস ও সাধারণ অবস্থা',
$body$কোলিক (পেটের ব্যথা) ঘোড়ার মৃত্যুর প্রধান কারণ। লক্ষণ: মাটিতে থাবা দেওয়া, পাশ দেখা, গড়াগড়ি দেওয়া, খাবার প্রত্যাখ্যান, ব্যায়াম ছাড়াই ঘাম, হৃদস্পন্দন বৃদ্ধি (স্বাভাবিক ২৮-৪৪ bpm)। প্রথম প্রতিক্রিয়া: ঘোড়াকে জোরে গড়াতে দেবেন না — এতে অন্ত্র পেঁচিয়ে যেতে পারে। ঘোড়াকে শান্তভাবে হাঁটান। অবিলম্বে পশুচিকিৎসক ডাকুন। ল্যামিনাইটিস: খুরের ল্যামিনার বেদনাদায়ক প্রদাহ। লক্ষণ: সামনের পা সামনে বাড়িয়ে দাঁড়ানো, হাঁটতে অনীহা, পায়ে স্পর্শ করলে গরম। জরুরি: পায়ে ঠান্ডা জল দিন, নরম বিছানায় বিশ্রাম, পশুচিকিৎসক ডাকুন।$body$,
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M08-horse-health' AND s.slug='M08-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'hi', 'कोलिक, लैमिनाइटिस और सामान्य स्थितियां',
$body$कोलिक (पेट दर्द) घोड़ों की मृत्यु का प्रमुख कारण है। लक्षण: जमीन खुरचना, पेट देखना, लोटना, खाने से इनकार, व्यायाम के बिना पसीना, हृदय गति बढ़ना (सामान्य 28-44 bpm)। पहली प्रतिक्रिया: घोड़े को जोर से न लोटने दें — आंत मुड़ सकती है। घोड़े को शांति से टहलाएं। तुरंत पशु चिकित्सक बुलाएं। लैमिनाइटिस: खुर की लैमिनाई की दर्दनाक सूजन। लक्षण: अगले पैर आगे बढ़ाकर खड़े होना, चलने में हिचकिचाहट, खुर गर्म। आपातकालीन: पैरों पर ठंडा पानी डालें, नरम बिछावन पर आराम, पशु चिकित्सक बुलाएं।$body$,
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M08-horse-health' AND s.slug='M08-S1'
ON CONFLICT (section_id, lang) DO NOTHING;
