-- ============================================================================
-- 005 — Section body content for M02–M10 (Cowherd Acharya)
-- Run in Supabase SQL editor after 004_seed_demo_modules.sql
-- ============================================================================

-- ============================================================================
-- M02-feeding: body content (M02-S1 and M02-S2 rows exist, status=draft)
-- ============================================================================

UPDATE acharya_cowherd.crs_section_tr
SET body = 'Cattle need three types of feed: roughage, concentrates, and minerals. Roughage is the foundation — dry fodder like paddy straw or wheat straw and green fodder like maize, sorghum, or berseem. A milking cow needs 25-30 kg of green fodder or 7-8 kg of dry fodder per day as roughage. Concentrates — grain mixtures, oil cakes, bran — supply energy and protein the roughage alone cannot provide. A milking cow producing 8-10 litres per day needs 2-3 kg of concentrate daily on top of roughage. A dry cow needs half that. Mineral mixture (50-60 g daily) and salt (30 g daily) prevent deficiency diseases. Never skip minerals — milk fever, retained placenta, and poor reproduction are common signs of mineral shortage.',
    status = 'published'
WHERE section_id IN (
  SELECT s.id FROM acharya_cowherd.crs_sections s
  JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
  WHERE m.slug = 'M02-feeding' AND s.slug = 'M02-S1'
) AND lang = 'en';

UPDATE acharya_cowherd.crs_section_tr
SET body = 'গবাদি পশুর তিন ধরনের খাদ্য প্রয়োজন: রাফেজ, ঘন খাদ্য এবং খনিজ। রাফেজ হলো ভিত্তি — ধানের খড়, গমের খড়ের মতো শুকনো খাদ্য এবং ভুট্টা, জোয়ার, বার্সিমের মতো সবুজ খাদ্য। একটি দুধ দেওয়া গরুর দৈনিক ২৫-৩০ কেজি সবুজ খাদ্য বা ৭-৮ কেজি শুকনো খাদ্য দরকার। ঘন খাদ্য — শস্য মিশ্রণ, খৈল, তুষ — রাফেজ একা যা সরবরাহ করতে পারে না সেই শক্তি ও প্রোটিন দেয়। প্রতিদিন ৮-১০ লিটার দুধ দেওয়া গরুর রাফেজের পাশাপাশি দৈনিক ২-৩ কেজি ঘন খাদ্য দরকার। খনিজ মিশ্রণ (দৈনিক ৫০-৬০ গ্রাম) এবং লবণ (৩০ গ্রাম) ঘাটতিজনিত রোগ প্রতিরোধ করে।',
    status = 'published'
WHERE section_id IN (
  SELECT s.id FROM acharya_cowherd.crs_sections s
  JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
  WHERE m.slug = 'M02-feeding' AND s.slug = 'M02-S1'
) AND lang = 'bn';

UPDATE acharya_cowherd.crs_section_tr
SET body = 'पशुओं को तीन प्रकार के चारे की जरूरत होती है: रूखा चारा, सांद्र चारा और खनिज। रूखा चारा आधार है — धान की पुआल, गेहूं की भूसी जैसा सूखा चारा और मक्का, ज्वार, बरसीम जैसा हरा चारा। एक दूध देने वाली गाय को प्रतिदिन 25-30 किग्रा हरा चारा या 7-8 किग्रा सूखा चारा चाहिए। सांद्र चारा — अनाज मिश्रण, खली, चोकर — वह ऊर्जा और प्रोटीन देता है जो अकेला रूखा चारा नहीं दे सकता। रोजाना 8-10 लीटर दूध देने वाली गाय को रूखे चारे के अलावा 2-3 किग्रा सांद्र चारा चाहिए। खनिज मिश्रण (50-60 ग्राम दैनिक) और नमक (30 ग्राम) कमी की बीमारियां रोकते हैं।',
    status = 'published'
WHERE section_id IN (
  SELECT s.id FROM acharya_cowherd.crs_sections s
  JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
  WHERE m.slug = 'M02-feeding' AND s.slug = 'M02-S1'
) AND lang = 'hi';

UPDATE acharya_cowherd.crs_section_tr
SET body = 'Feed at fixed times every day — animals are creatures of habit and irregular feeding causes stress, reduces milk, and increases disease risk. For dairy cattle: morning feed at 6am (roughage first, then concentrate), midday green fodder top-up if available, evening feed at 5-6pm before milking. Always provide concentrate before milking, not after — animals associate the two and milk let-down improves. Water must always be available. A cow will not eat well if thirsty. In summer, offer water three or more times per day. Weigh or measure concentrate carefully — overfeeding concentrate causes acidosis (sour stomach) which is dangerous. Underfeeding reduces milk. The correct amount depends on body weight and milk production — ask the supervisor for the specific ration chart for your farm.',
    status = 'published'
WHERE section_id IN (
  SELECT s.id FROM acharya_cowherd.crs_sections s
  JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
  WHERE m.slug = 'M02-feeding' AND s.slug = 'M02-S2'
) AND lang = 'en';

UPDATE acharya_cowherd.crs_section_tr
SET body = 'প্রতিদিন নির্দিষ্ট সময়ে খাওয়ান — পশু অভ্যাসের প্রাণী এবং অনিয়মিত খাওয়ানো মানসিক চাপ, দুধ হ্রাস এবং রোগের ঝুঁকি বাড়ায়। দুগ্ধজাত গবাদি পশুর জন্য: সকাল ৬টায় খাওয়ানো (প্রথমে রাফেজ, তারপর ঘন খাদ্য), দুপুরে সবুজ খাদ্য যদি পাওয়া যায়, সন্ধ্যার দুধ দোহানোর আগে বিকেল ৫-৬টায় খাওয়ানো। সর্বদা দোহানোর আগে ঘন খাদ্য দিন, পরে নয় — পশু এই দুটির সম্পর্ক বোঝে এবং দুধ ছাড়া ভালো হয়। জল সর্বদা পাওয়া যাচ্ছে কিনা নিশ্চিত করুন। পিপাসার্ত গরু ভালো খাবে না।',
    status = 'published'
WHERE section_id IN (
  SELECT s.id FROM acharya_cowherd.crs_sections s
  JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
  WHERE m.slug = 'M02-feeding' AND s.slug = 'M02-S2'
) AND lang = 'bn';

UPDATE acharya_cowherd.crs_section_tr
SET body = 'हर दिन तय समय पर चारा दें — पशु आदत के प्राणी हैं और अनियमित खिलाने से तनाव, दूध में कमी और बीमारी का खतरा बढ़ता है। डेयरी पशुओं के लिए: सुबह 6 बजे (पहले रूखा चारा, फिर सांद्र), दोपहर में हरा चारा यदि उपलब्ध हो, शाम 5-6 बजे दूध दुहने से पहले। हमेशा दूध दुहने से पहले सांद्र चारा दें, बाद में नहीं। सांद्र की सही मात्रा दें — अधिक देने से एसिडोसिस होता है जो खतरनाक है। कम देने से दूध घटता है। पानी हमेशा उपलब्ध होना चाहिए।',
    status = 'published'
WHERE section_id IN (
  SELECT s.id FROM acharya_cowherd.crs_sections s
  JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
  WHERE m.slug = 'M02-feeding' AND s.slug = 'M02-S2'
) AND lang = 'hi';

-- ============================================================================
-- M03-milking — sections and content
-- ============================================================================

WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug='M03-milking')
INSERT INTO acharya_cowherd.crs_sections (module_id, slug, sort_order, estimated_hours)
SELECT mod.id, 'M03-S1', 1, 1.0 FROM mod ON CONFLICT DO NOTHING;

WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug='M03-milking')
INSERT INTO acharya_cowherd.crs_sections (module_id, slug, sort_order, estimated_hours)
SELECT mod.id, 'M03-S2', 2, 1.0 FROM mod ON CONFLICT DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'en', 'Preparing to Milk',
'Wash your hands before touching the animal. Tie the animal securely — front and back leg. Clean the udder with a clean damp cloth, wiping each teat from base to tip. Discard the first 2-3 squirts from each teat into a strip cup — this forestripping detects mastitis (look for clots, wateriness, or blood) and removes the bacterial-rich first milk. The pre-milking stimulation from cleaning and forestripping triggers oxytocin release, which causes milk let-down. If you skip this, the cow will not give her full milk. The milking area must be clean and calm — noise and disturbance block oxytocin and reduce yield.',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M03-milking' AND s.slug='M03-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'bn', 'দোহানোর প্রস্তুতি',
'পশু স্পর্শ করার আগে হাত ধুয়ে নিন। পশুকে ভালোভাবে বাঁধুন — সামনে ও পিছনের পা। একটি পরিষ্কার ভেজা কাপড় দিয়ে ওলান পরিষ্কার করুন, প্রতিটি আঁটি গোড়া থেকে ডগা পর্যন্ত মুছুন। প্রতিটি আঁটি থেকে প্রথম ২-৩ ফোঁটা একটি স্ট্রিপ কাপে ফেলুন — এই ফোরস্ট্রিপিং ম্যাস্টাইটিস শনাক্ত করে (জমাট, পানিয়া বা রক্ত দেখুন)। পরিষ্কার ও ফোরস্ট্রিপিং থেকে প্রাক-দোহনের উদ্দীপনা অক্সিটোসিন নিঃসরণ ঘটায়, যা দুধ ছাড়তে সাহায্য করে। যদি এটি এড়িয়ে যান, গরু পুরো দুধ দেবে না।',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M03-milking' AND s.slug='M03-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'hi', 'दूध दुहने की तैयारी',
'पशु को छूने से पहले हाथ धोएं। पशु को आगे और पीछे से मजबूती से बांधें। एक साफ गीले कपड़े से थन को साफ करें, प्रत्येक थनी को जड़ से नोक तक पोंछें। प्रत्येक थनी से पहली 2-3 धार एक स्ट्रिप कप में डालें — यह फोरस्ट्रिपिंग मास्टाइटिस की जांच करती है (थक्के, पानीपन या खून देखें)। पूर्व-दुहान की उत्तेजना ऑक्सीटोसिन छोड़ती है जिससे दूध उतरता है। यदि यह छोड़ें तो गाय पूरा दूध नहीं देगी।',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M03-milking' AND s.slug='M03-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'en', 'Milking Technique and Teat Dip',
'Use the full-hand squeeze method — wrap all four fingers and thumb around the teat, close from top to bottom in a wave motion. Do not pull or strip downward using thumb and forefinger alone — this causes teat damage and mastitis over time. Milk all four quarters completely — incomplete milking causes mastitis and reduces future production. After the last quarter is done, apply iodine teat dip (0.5% solution) to each teat immediately. Do not wipe it off — let it air dry. This kills bacteria that enter the open teat canal after milking. Teat dipping is the single most effective mastitis prevention measure on any dairy farm. Store milk in a clean, covered vessel and transfer to cold storage within 30 minutes.',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M03-milking' AND s.slug='M03-S2'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'bn', 'দোহানোর কৌশল ও টিট ডিপ',
'পূর্ণ হাত চেপে পদ্ধতি ব্যবহার করুন — সব চার আঙুল ও বুড়ো আঙুল আঁটির চারপাশে মুড়ে দিন, উপর থেকে নিচে তরঙ্গ গতিতে বন্ধ করুন। শুধু বুড়ো আঙুল ও তর্জনী দিয়ে নিচে টানবেন না — এতে আঁটির ক্ষতি হয়। দুধ দোহানো শেষে প্রতিটি আঁটিতে আয়োডিন টিট ডিপ (০.৫% দ্রবণ) লাগান। মুছবেন না — শুকাতে দিন। দোহানোর পরে খোলা আঁটি খালে প্রবেশ করা ব্যাকটেরিয়া মেরে ফেলে। টিট ডিপিং হলো যেকোনো দুগ্ধ খামারে একক সবচেয়ে কার্যকর ম্যাস্টাইটিস প্রতিরোধ ব্যবস্থা।',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M03-milking' AND s.slug='M03-S2'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'hi', 'दूध दुहने की तकनीक और थन डुबाव',
'पूरे हाथ से दबाने की विधि उपयोग करें — चारों उंगलियां और अंगूठा थनी के चारों ओर लपेटें, ऊपर से नीचे लहर गति से बंद करें। सिर्फ अंगूठे और तर्जनी से नीचे न खींचें — इससे थनी क्षति होती है। दूध दुहने के बाद तुरंत प्रत्येक थनी पर आयोडीन थन डुबाव (0.5% घोल) लगाएं। पोंछें नहीं — सूखने दें। दूध दुहने के बाद खुली थनी नलिका में प्रवेश करने वाले बैक्टीरिया को मारता है। थन डुबाव किसी भी डेयरी फार्म पर मास्टाइटिस की रोकथाम का सबसे प्रभावी उपाय है।',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M03-milking' AND s.slug='M03-S2'
ON CONFLICT (section_id, lang) DO NOTHING;

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
'Foot and Mouth Disease (FMD): Highly contagious viral disease. Signs — blisters on tongue, gums, feet, between toes, teats; drooling; lameness; reduced milk. No cure — treat symptoms, isolate immediately, disinfect shed, report to vet. Vaccinate all cattle every 6 months. Hemorrhagic Septicemia (HS): Bacterial (Pasteurella). Signs — sudden high fever (104-106°F), difficulty breathing, swelling under jaw and brisket, animal may die within 24 hours. Vaccinate before monsoon season. Treat with antibiotics only under vet direction. Black Quarter (BQ): Soil-borne bacterial disease. Affects young cattle 6 months to 2 years. Signs — sudden lameness, hot painful swelling of thigh or shoulder muscle, crackling sound when pressed (gas gangrene), animal may die within 12-24 hours. Vaccinate annually before monsoon.',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M04-cattle-health' AND s.slug='M04-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'bn', 'সাধারণ রোগ: FMD, HS ও BQ',
'পায়ের খুরা ও মুখের রোগ (FMD): অত্যন্ত সংক্রামক ভাইরাসজনিত রোগ। লক্ষণ — জিভ, মাড়ি, পায়ের আঙুলের মাঝে, আঁটিতে ফোসকা; লালা ঝরা; খোঁড়ানো; দুধ কমে যাওয়া। কোনো নিরাময় নেই — লক্ষণের চিকিৎসা করুন, অবিলম্বে আলাদা করুন, গোয়ালঘর জীবাণুমুক্ত করুন। প্রতি ৬ মাসে সব গবাদি পশুকে টিকা দিন। রক্তক্ষরী সেপ্টিসেমিয়া (HS): ব্যাকটেরিয়াজনিত। লক্ষণ — হঠাৎ তীব্র জ্বর (১০৪-১০৬°F), শ্বাসকষ্ট, চোয়াল ও বুকে ফোলা, ২৪ ঘণ্টার মধ্যে মৃত্যু হতে পারে। বর্ষার আগে টিকা দিন। কালো পা (BQ): মাটিতে থাকা ব্যাকটেরিয়াজনিত রোগ। ৬ মাস থেকে ২ বছর বয়সী তরুণ গবাদি পশুদের প্রভাবিত করে। লক্ষণ — হঠাৎ খোঁড়ানো, উরু বা কাঁধের পেশিতে গরম যন্ত্রণাদায়ক ফোলা, চাপ দিলে চড়চড় শব্দ। বার্ষিক টিকা দিন।',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M04-cattle-health' AND s.slug='M04-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'hi', 'सामान्य रोग: FMD, HS और BQ',
'खुरपका-मुंहपका रोग (FMD): अत्यधिक संक्रामक वायरल रोग। लक्षण — जीभ, मसूड़ों, खुरों के बीच, थनों पर छाले; लार टपकना; लंगड़ापन; दूध में कमी। कोई इलाज नहीं — लक्षणों का उपचार करें, तुरंत अलग करें। हर 6 महीने में टीका लगाएं। रक्तस्रावी सेप्टिसीमिया (HS): जीवाणुजनित। लक्षण — अचानक तेज बुखार (104-106°F), सांस लेने में तकलीफ, जबड़े के नीचे सूजन, 24 घंटे में मृत्यु हो सकती है। मानसून से पहले टीका लगाएं। काली टांग (BQ): मिट्टी से जनित जीवाणु रोग। 6 माह से 2 वर्ष के युवा पशुओं को प्रभावित करता है। जांघ या कंधे में गर्म दर्दनाक सूजन, दबाने पर कड़-कड़ की आवाज। हर साल मानसून से पहले टीका लगाएं।',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M04-cattle-health' AND s.slug='M04-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'en', 'Mastitis and Bloat',
'Mastitis: Inflammation of the udder. Signs — one or more quarters hard, hot, swollen, or painful; milk has clots, blood, or watery appearance; cow flinches or kicks during milking. Caused by bacteria entering through the teat canal. Prevention is better than cure: teat dip after every milking, dry cow therapy at end of lactation, clean bedding, avoid trauma to udder. Treat only with antibiotics prescribed by vet. Discard antibiotic-treated milk per vet instruction. Bloat: Gas accumulation in rumen. Signs — left side of belly distended and drum-like, animal restless, grinding teeth, difficulty breathing, drooling. Caused by eating too much wet legume fodder (berseem, lucerne) without enough dry roughage. Emergency first response: walk the animal, massage the rumen, call vet. Prevent by limiting access to wet legumes and always providing dry roughage first.',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M04-cattle-health' AND s.slug='M04-S2'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'bn', 'ম্যাস্টাইটিস ও ফাঁপা',
'ম্যাস্টাইটিস: ওলানের প্রদাহ। লক্ষণ — এক বা একাধিক ভাগ শক্ত, গরম, ফোলা বা ব্যথাযুক্ত; দুধে জমাট, রক্ত বা পানিয়া। আঁটি খাল দিয়ে ব্যাকটেরিয়া প্রবেশের কারণে হয়। প্রতিরোধ সর্বোত্তম: প্রতিটি দোহানোর পরে টিট ডিপ, পরিষ্কার বিছানা। ফাঁপা: রুমেনে গ্যাস জমা। লক্ষণ — পেটের বাম পাশ ফোলা ও ঢোলের মতো, পশু অস্থির, দাঁত পিষছে, শ্বাসকষ্ট। বেশি ভেজা শিম জাতীয় খাদ্য (বার্সিম, লুসার্ন) খাওয়ার কারণে। জরুরি প্রতিক্রিয়া: পশু হাঁটান, রুমেন ম্যাসাজ করুন, ভেটকে ডাকুন।',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M04-cattle-health' AND s.slug='M04-S2'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'hi', 'मास्टाइटिस और अफारा',
'मास्टाइटिस: थन की सूजन। लक्षण — एक या अधिक तिमाई कठोर, गर्म, सूजी या दर्दनाक; दूध में थक्के, खून या पानीपन। थनी नलिका से बैक्टीरिया प्रवेश के कारण। रोकथाम: हर दूध दुहने के बाद थन डुबाव, साफ बिछावन। अफारा: रुमेन में गैस जमाव। लक्षण — पेट का बायां हिस्सा ढोल जैसा फूला हुआ, पशु बेचैन, दांत पीसना, सांस लेने में तकलीफ। अधिक गीली फलीदार घास खाने से होता है। आपातकालीन: पशु को चलाएं, रुमेन की मालिश करें, पशु चिकित्सक को बुलाएं।',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M04-cattle-health' AND s.slug='M04-S2'
ON CONFLICT (section_id, lang) DO NOTHING;

-- ============================================================================
-- M05-calf-care — sections and content
-- ============================================================================

WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug='M05-calf-care')
INSERT INTO acharya_cowherd.crs_sections (module_id, slug, sort_order, estimated_hours)
SELECT mod.id, 'M05-S1', 1, 1.0 FROM mod ON CONFLICT DO NOTHING;

WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug='M05-calf-care')
INSERT INTO acharya_cowherd.crs_sections (module_id, slug, sort_order, estimated_hours)
SELECT mod.id, 'M05-S2', 2, 1.0 FROM mod ON CONFLICT DO NOTHING;

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

-- ============================================================================
-- M06-horse-stable — sections and content
-- ============================================================================

WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug='M06-horse-stable')
INSERT INTO acharya_cowherd.crs_sections (module_id, slug, sort_order, estimated_hours)
SELECT mod.id, 'M06-S1', 1, 1.5 FROM mod ON CONFLICT DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'en', 'Stable Design and Daily Cleaning',
'A horse needs a minimum stall size of 3.6 m × 3.6 m (12 × 12 ft) for a 450-500 kg horse. Smaller stalls cause stress, weaving, and wood-chewing behaviours. The floor must be non-slip — rubber mats over concrete are ideal. Bedding depth of at least 15 cm of straw or wood shavings is required for comfort and to absorb urine. Sawdust is too fine for horses — it causes respiratory problems and impaction colic if eaten. Daily cleaning routine: remove all droppings (skip) at least twice daily — morning and evening. Remove all wet and soiled bedding. Top up dry bedding. Scrub water bucket daily. Fill hay net. Check floor for sharp objects. A clean, dry bed prevents thrush (bacterial hoof infection) and respiratory disease.',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M06-horse-stable' AND s.slug='M06-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'bn', 'আস্তাবলের নকশা ও দৈনিক পরিষ্কার',
'একটি ৪৫০-৫০০ কেজি ঘোড়ার জন্য ন্যূনতম ঘরের আকার ৩.৬ মি × ৩.৬ মি (১২ × ১২ ফুট) প্রয়োজন। ছোট ঘর মানসিক চাপ, দুলুনি এবং কাঠ চিবানোর আচরণ তৈরি করে। মেঝে পিচ্ছিলহীন হতে হবে — কংক্রিটের উপর রাবার ম্যাট আদর্শ। আরামের জন্য কমপক্ষে ১৫ সেমি গভীর খড় বা কাঠের টুকরোর বিছানা প্রয়োজন। দৈনিক পরিষ্কার রুটিন: কমপক্ষে দিনে দুইবার সমস্ত মলত্যাগ সরান। সমস্ত ভেজা বিছানা সরান। শুকনো বিছানা যোগ করুন। প্রতিদিন জলের বালতি ঘষে পরিষ্কার করুন। পরিষ্কার, শুকনো বিছানা থ্রাশ (ব্যাকটেরিয়াল খুরের সংক্রমণ) এবং শ্বাসযন্ত্রের রোগ প্রতিরোধ করে।',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M06-horse-stable' AND s.slug='M06-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'hi', 'अस्तबल डिजाइन और दैनिक सफाई',
'450-500 किग्रा घोड़े के लिए न्यूनतम स्टॉल का आकार 3.6 मी × 3.6 मी (12 × 12 फीट) होना चाहिए। छोटे स्टॉल तनाव, झूलने और लकड़ी चबाने का व्यवहार पैदा करते हैं। फर्श फिसलन-रहित होना चाहिए — कंक्रीट पर रबर मैट आदर्श हैं। कम से कम 15 सेमी गहरी भूसे या लकड़ी की छीलन की बिछावन जरूरी है। रोजाना सफाई: सुबह और शाम कम से कम दो बार सभी मल हटाएं। गीली बिछावन हटाएं। सूखी बिछावन डालें। हर दिन पानी की बाल्टी रगड़कर साफ करें। साफ, सूखी बिछावन थ्रश और सांस की बीमारी रोकती है।',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M06-horse-stable' AND s.slug='M06-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

-- ============================================================================
-- M07-horse-feeding — sections and content
-- ============================================================================

WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug='M07-horse-feeding')
INSERT INTO acharya_cowherd.crs_sections (module_id, slug, sort_order, estimated_hours)
SELECT mod.id, 'M07-S1', 1, 1.0 FROM mod ON CONFLICT DO NOTHING;

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

-- ============================================================================
-- M08-horse-health — sections and content
-- ============================================================================

WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug='M08-horse-health')
INSERT INTO acharya_cowherd.crs_sections (module_id, slug, sort_order, estimated_hours)
SELECT mod.id, 'M08-S1', 1, 1.5 FROM mod ON CONFLICT DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'en', 'Colic, Laminitis and Common Conditions',
'Colic (abdominal pain) is the leading cause of death in horses. Signs: pawing the ground, looking at flank, rolling, refusing to eat, sweating without exercise, elevated heart rate (normal is 28-44 bpm). First response: do not let the horse roll violently — it can cause gut twist. Walk the horse quietly. Call the vet immediately — colic can be fatal within hours. Do not give pain medication without vet instruction. Laminitis: painful inflammation of the hoof laminae. Signs: standing with front feet stretched forward, reluctance to walk, feet hot to touch. Cause: too much grain, lush grass, or Cushing disease. Emergency: cold water hose feet, rest on deep soft bedding, call vet. Prevention: never allow sudden access to large amounts of grain or fresh grass. Tetanus: always keep vaccination current — horses are highly susceptible and tetanus is almost always fatal.',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M08-horse-health' AND s.slug='M08-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'bn', 'কোলিক, ল্যামিনাইটিস ও সাধারণ অবস্থা',
'কোলিক (পেটের ব্যথা) ঘোড়ার মৃত্যুর প্রধান কারণ। লক্ষণ: মাটিতে থাবা দেওয়া, পাশ দেখা, গড়াগড়ি দেওয়া, খাবার প্রত্যাখ্যান, ব্যায়াম ছাড়াই ঘাম, হৃদস্পন্দন বৃদ্ধি (স্বাভাবিক ২৮-৪৪ bpm)। প্রথম প্রতিক্রিয়া: ঘোড়াকে জোরে গড়াতে দেবেন না — এতে অন্ত্র পেঁচিয়ে যেতে পারে। ঘোড়াকে শান্তভাবে হাঁটান। অবিলম্বে পশুচিকিৎসক ডাকুন। ল্যামিনাইটিস: খুরের ল্যামিনার বেদনাদায়ক প্রদাহ। লক্ষণ: সামনের পা সামনে বাড়িয়ে দাঁড়ানো, হাঁটতে অনীহা, পায়ে স্পর্শ করলে গরম। জরুরি: পায়ে ঠান্ডা জল দিন, নরম বিছানায় বিশ্রাম, পশুচিকিৎসক ডাকুন।',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M08-horse-health' AND s.slug='M08-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'hi', 'कोलिक, लैमिनाइटिस और सामान्य स्थितियां',
'कोलिक (पेट दर्द) घोड़ों की मृत्यु का प्रमुख कारण है। लक्षण: जमीन खुरचना, पेट देखना, लोटना, खाने से इनकार, व्यायाम के बिना पसीना, हृदय गति बढ़ना (सामान्य 28-44 bpm)। पहली प्रतिक्रिया: घोड़े को जोर से न लोटने दें — आंत मुड़ सकती है। घोड़े को शांति से टहलाएं। तुरंत पशु चिकित्सक बुलाएं। लैमिनाइटिस: खुर की लैमिनाई की दर्दनाक सूजन। लक्षण: अगले पैर आगे बढ़ाकर खड़े होना, चलने में हिचकिचाहट, खुर गर्म। आपातकालीन: पैरों पर ठंडा पानी डालें, नरम बिछावन पर आराम, पशु चिकित्सक बुलाएं।',
'published'
FROM acharya_cowherd.crs_sections s
JOIN acharya_cowherd.crs_modules m ON s.module_id = m.id
WHERE m.slug='M08-horse-health' AND s.slug='M08-S1'
ON CONFLICT (section_id, lang) DO NOTHING;

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

-- ============================================================================
-- M10-safety — sections and content
-- ============================================================================

WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug='M10-safety')
INSERT INTO acharya_cowherd.crs_sections (module_id, slug, sort_order, estimated_hours)
SELECT mod.id, 'M10-S1', 1, 1.0 FROM mod ON CONFLICT DO NOTHING;

WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug='M10-safety')
INSERT INTO acharya_cowherd.crs_sections (module_id, slug, sort_order, estimated_hours)
SELECT mod.id, 'M10-S2', 2, 1.0 FROM mod ON CONFLICT DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'en', 'Safe Approach and Handling',
'Never approach a horse or cow from directly behind — this is the primary kick zone. Always approach from the front or near the shoulder, at an angle, talking calmly as you approach so the animal knows you are there. For horses: stand to the left (near side) when leading or working — horses are trained to be handled from the left. When entering a stall, open the door, speak first, let the horse look at you, then enter. Never duck under the neck or squeeze past — if the animal spooks you are trapped. Halter fitting: the noseband should sit 2 finger-widths below the cheekbone. A halter that is too tight restricts breathing; too loose and the horse can get a foot caught in it. Lead rope: hold 30-45 cm from the clip, never wrap around your hand — a spooked horse can drag you and break fingers.',
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
