-- 005a — M02 feeding (UPDATE body for existing draft rows)

-- ============================================================================
-- M02-feeding: body content (M02-S1 and M02-S2 rows exist, status=draft)
-- ============================================================================

UPDATE acharya_cowherd.crs_section_tr
SET body = $body$Cattle need three types of feed: roughage, concentrates, and minerals. Roughage is the foundation — dry fodder like paddy straw or wheat straw and green fodder like maize, sorghum, or berseem. A milking cow needs 25-30 kg of green fodder or 7-8 kg of dry fodder per day as roughage. Concentrates — grain mixtures, oil cakes, bran — supply energy and protein the roughage alone cannot provide. A milking cow producing 8-10 litres per day needs 2-3 kg of concentrate daily on top of roughage. A dry cow needs half that. Mineral mixture (50-60 g daily) and salt (30 g daily) prevent deficiency diseases. Never skip minerals — milk fever, retained placenta, and poor reproduction are common signs of mineral shortage.$body$,
    status = 'published'
WHERE section_id IN (
  SELECT s.id FROM acharya_cowherd.crs_sections s
  JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
  WHERE m.slug = 'M02-feeding' AND s.slug = 'M02-S1'
) AND lang = 'en';

UPDATE acharya_cowherd.crs_section_tr
SET body = $body$গবাদি পশুর তিন ধরনের খাদ্য প্রয়োজন: রাফেজ, ঘন খাদ্য এবং খনিজ। রাফেজ হলো ভিত্তি — ধানের খড়, গমের খড়ের মতো শুকনো খাদ্য এবং ভুট্টা, জোয়ার, বার্সিমের মতো সবুজ খাদ্য। একটি দুধ দেওয়া গরুর দৈনিক ২৫-৩০ কেজি সবুজ খাদ্য বা ৭-৮ কেজি শুকনো খাদ্য দরকার। ঘন খাদ্য — শস্য মিশ্রণ, খৈল, তুষ — রাফেজ একা যা সরবরাহ করতে পারে না সেই শক্তি ও প্রোটিন দেয়। প্রতিদিন ৮-১০ লিটার দুধ দেওয়া গরুর রাফেজের পাশাপাশি দৈনিক ২-৩ কেজি ঘন খাদ্য দরকার। খনিজ মিশ্রণ (দৈনিক ৫০-৬০ গ্রাম) এবং লবণ (৩০ গ্রাম) ঘাটতিজনিত রোগ প্রতিরোধ করে।$body$,
    status = 'published'
WHERE section_id IN (
  SELECT s.id FROM acharya_cowherd.crs_sections s
  JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
  WHERE m.slug = 'M02-feeding' AND s.slug = 'M02-S1'
) AND lang = 'bn';

UPDATE acharya_cowherd.crs_section_tr
SET body = $body$पशुओं को तीन प्रकार के चारे की जरूरत होती है: रूखा चारा, सांद्र चारा और खनिज। रूखा चारा आधार है — धान की पुआल, गेहूं की भूसी जैसा सूखा चारा और मक्का, ज्वार, बरसीम जैसा हरा चारा। एक दूध देने वाली गाय को प्रतिदिन 25-30 किग्रा हरा चारा या 7-8 किग्रा सूखा चारा चाहिए। सांद्र चारा — अनाज मिश्रण, खली, चोकर — वह ऊर्जा और प्रोटीन देता है जो अकेला रूखा चारा नहीं दे सकता। रोजाना 8-10 लीटर दूध देने वाली गाय को रूखे चारे के अलावा 2-3 किग्रा सांद्र चारा चाहिए। खनिज मिश्रण (50-60 ग्राम दैनिक) और नमक (30 ग्राम) कमी की बीमारियां रोकते हैं।$body$,
    status = 'published'
WHERE section_id IN (
  SELECT s.id FROM acharya_cowherd.crs_sections s
  JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
  WHERE m.slug = 'M02-feeding' AND s.slug = 'M02-S1'
) AND lang = 'hi';

UPDATE acharya_cowherd.crs_section_tr
SET body = $body$Feed at fixed times every day — animals are creatures of habit and irregular feeding causes stress, reduces milk, and increases disease risk. For dairy cattle: morning feed at 6am (roughage first, then concentrate), midday green fodder top-up if available, evening feed at 5-6pm before milking. Always provide concentrate before milking, not after — animals associate the two and milk let-down improves. Water must always be available. A cow will not eat well if thirsty. In summer, offer water three or more times per day. Weigh or measure concentrate carefully — overfeeding concentrate causes acidosis (sour stomach) which is dangerous. Underfeeding reduces milk. The correct amount depends on body weight and milk production — ask the supervisor for the specific ration chart for your farm.$body$,
    status = 'published'
WHERE section_id IN (
  SELECT s.id FROM acharya_cowherd.crs_sections s
  JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
  WHERE m.slug = 'M02-feeding' AND s.slug = 'M02-S2'
) AND lang = 'en';

UPDATE acharya_cowherd.crs_section_tr
SET body = $body$প্রতিদিন নির্দিষ্ট সময়ে খাওয়ান — পশু অভ্যাসের প্রাণী এবং অনিয়মিত খাওয়ানো মানসিক চাপ, দুধ হ্রাস এবং রোগের ঝুঁকি বাড়ায়। দুগ্ধজাত গবাদি পশুর জন্য: সকাল ৬টায় খাওয়ানো (প্রথমে রাফেজ, তারপর ঘন খাদ্য), দুপুরে সবুজ খাদ্য যদি পাওয়া যায়, সন্ধ্যার দুধ দোহানোর আগে বিকেল ৫-৬টায় খাওয়ানো। সর্বদা দোহানোর আগে ঘন খাদ্য দিন, পরে নয় — পশু এই দুটির সম্পর্ক বোঝে এবং দুধ ছাড়া ভালো হয়। জল সর্বদা পাওয়া যাচ্ছে কিনা নিশ্চিত করুন। পিপাসার্ত গরু ভালো খাবে না।$body$,
    status = 'published'
WHERE section_id IN (
  SELECT s.id FROM acharya_cowherd.crs_sections s
  JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
  WHERE m.slug = 'M02-feeding' AND s.slug = 'M02-S2'
) AND lang = 'bn';

UPDATE acharya_cowherd.crs_section_tr
SET body = $body$हर दिन तय समय पर चारा दें — पशु आदत के प्राणी हैं और अनियमित खिलाने से तनाव, दूध में कमी और बीमारी का खतरा बढ़ता है। डेयरी पशुओं के लिए: सुबह 6 बजे (पहले रूखा चारा, फिर सांद्र), दोपहर में हरा चारा यदि उपलब्ध हो, शाम 5-6 बजे दूध दुहने से पहले। हमेशा दूध दुहने से पहले सांद्र चारा दें, बाद में नहीं। सांद्र की सही मात्रा दें — अधिक देने से एसिडोसिस होता है जो खतरनाक है। कम देने से दूध घटता है। पानी हमेशा उपलब्ध होना चाहिए।$body$,
    status = 'published'
WHERE section_id IN (
  SELECT s.id FROM acharya_cowherd.crs_sections s
  JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
  WHERE m.slug = 'M02-feeding' AND s.slug = 'M02-S2'
) AND lang = 'hi';
