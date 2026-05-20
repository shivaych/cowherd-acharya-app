-- 005b — M03 milking


-- ============================================================================
-- M03-milking — sections and content
-- ============================================================================

WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug='M03-milking')
INSERT INTO acharya_cowherd.crs_sections (module_id, slug, sort_order, estimated_hours)
SELECT mod.id, 'M03-S1', 1, 1.0 FROM mod ON CONFLICT (module_id, slug) DO NOTHING;

WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug='M03-milking')
INSERT INTO acharya_cowherd.crs_sections (module_id, slug, sort_order, estimated_hours)
SELECT mod.id, 'M03-S2', 2, 1.0 FROM mod ON CONFLICT (module_id, slug) DO NOTHING;

INSERT INTO acharya_cowherd.crs_section_tr (section_id, lang, title, body, status)
SELECT s.id, 'en', 'Preparing to Milk',
'Wash your hands before touching the animal. Tie the animal securely — front and back leg. Clean the udder with a clean damp cloth, wiping each teat from base to tip. Discard the first 2-3 squirts from each teat to a strip cup — this forestripping detects mastitis (look for clots, wateriness, or blood) and removes the bacterial-rich first milk. The pre-milking stimulation from cleaning and forestripping triggers oxytocin release, which causes milk let-down. If you skip this, the cow will not give her full milk. The milking area must be clean and calm — noise and disturbance block oxytocin and reduce yield.',
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
