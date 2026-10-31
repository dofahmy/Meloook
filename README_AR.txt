نسخة Railway لبوت عروض مصر

1) ارفعي محتويات المجلد على GitHub repository خاص (Private)، ثم افتحي Railway > New Project > Deploy from GitHub Repo واختاري المستودع.
2) Railway > Variables: ضيفي TELEGRAM_API_ID و TELEGRAM_API_HASH و TELEGRAM_SESSION (جلسة StringSession الخاصة بك، دون مشاركتها في GitHub).
   بديل: TELEGRAM_SESSION_B64 لجلسة SQLite صالحة بنسخة base64. لا تستخدمي الاثنين معًا.
3) متغيرات اختيارية:
   ACTIVE_SOURCES=all
   MIRROR_HUNTER_TO_MELOOK=false
   STATE_DIR=/app/data
4) Railway > Service > Settings > Volumes: اعملي Volume واربطيه بمسار /app/data للحفاظ على سجل منع التكرار والجلسة (مهم).
5) فعّلي Deploy، ثم افتحي Logs. الرسالة المنتظرة: البوت متصل وشغّال — بانتظار بوستات جديدة.
6) لازم توقفي أي نسخة قديمة بتستخدم نفس Telegram session قبل بدء هذه النسخة.

ملحوظات: البوت Worker؛ لا يحتاج Domain أو PORT. Railway يدعم النشر من GitHub أو CLI، وليس تنفيذ ملف BAT مباشرة.
صور أمازون قد تفشل لو الموقع طلب CAPTCHA أو منع المتصفح على خوادم Railway.
هذه النسخة تحتفظ بكود توجيه القنوات كما وصلنا، ويفضل مراجعة القنوات المفعّلة ومخرجاتها في اختبار محدود أولًا.
