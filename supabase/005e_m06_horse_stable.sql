-- 005e — M06 horse stable


-- ============================================================================
-- M06-horse-stable — sections and content
-- ============================================================================

WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug='M06-horse-stable')
INSERT INTO acharya_cowherd.crs_sections (module_id, slug, sort_order, estimated_hours)
SELECT mod.id, 'M06-S1', 1, 1.5 FROM mod ON CONFLICT (module_id, slug) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'en', 'Stable Design and Daily Cleaning',
$body$A horse needs a minimum stall size of 3.6 m × 3.6 m (12 × 12 ft) for a 450-500 kg horse. Smaller stalls cause stress, weaving, and wood-chewing behaviours. The floor must be non-slip — rubber mats over concrete are ideal. Bedding depth of at least 15 cm of straw or wood shavings is required for comfort and to absorb urine. Sawdust is too fine for horses — it causes respiratory problems and impaction colic if eaten. Daily cleaning routine: remove all droppings (skip) at least twice daily — morning and evening. Remove all wet and soiled bedding. Top up dry bedding. Scrub water bucket daily. Fill hay net. Check floor for sharp objects. A clean, dry bed prevents thrush (bacterial hoof infection) and respiratory disease.$body$,
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M06-horse-stable' AND s.slug='M06-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'bn', 'আস্তাবলের নকশা ও দৈনিক পরিষ্কার',
$body$একটি ৪৫০-৫০০ কেজি ঘোড়ার জন্য ন্যূনতম ঘরের আকার ৩.৬ মি × ৩.৬ মি (১২ × ১২ ফুট) প্রয়োজন। ছোট ঘর মানসিক চাপ, দুলুনি এবং কাঠ চিবানোর আচরণ তৈরি করে। মেঝে পিচ্ছিলহীন হতে হবে — কংক্রিটের উপর রাবার ম্যাট আদর্শ। আরামের জন্য কমপক্ষে ১৫ সেমি গভীর খড় বা কাঠের টুকরোর বিছানা প্রয়োজন। দৈনিক পরিষ্কার রুটিন: কমপক্ষে দিনে দুইবার সমস্ত মলত্যাগ সরান। সমস্ত ভেজা বিছানা সরান। শুকনো বিছানা যোগ করুন। প্রতিদিন জলের বালতি ঘষে পরিষ্কার করুন। পরিষ্কার, শুকনো বিছানা থ্রাশ (ব্যাকটেরিয়াল খুরের সংক্রমণ) এবং শ্বাসযন্ত্রের রোগ প্রতিরোধ করে।$body$,
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M06-horse-stable' AND s.slug='M06-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'hi', 'अस्तबल डिजाइन और दैनिक सफाई',
$body$450-500 किग्रा घोड़े के लिए न्यूनतम स्टॉल का आकार 3.6 मी × 3.6 मी (12 × 12 फीट) होना चाहिए। छोटे स्टॉल तनाव, झूलने और लकड़ी चबाने का व्यवहार पैदा करते हैं। फर्श फिसलन-रहित होना चाहिए — कंक्रीट पर रबर मैट आदर्श हैं। कम से कम 15 सेमी गहरी भूसे या लकड़ी की छीलन की बिछावन जरूरी है। रोजाना सफाई: सुबह और शाम कम से कम दो बार सभी मल हटाएं। गीली बिछावन हटाएं। सूखी बिछावन डालें। हर दिन पानी की बाल्टी रगड़कर साफ करें। साफ, सूखी बिछावन थ्रश और सांस की बीमारी रोकती है।$body$,
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M06-horse-stable' AND s.slug='M06-S1'
ON CONFLICT (section_id, lang) DO NOTHING;
