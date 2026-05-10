here# استخدام نسخة أوبونتو الرسمية كقاعدة
FROM ubuntu:latest

# تحديث النظام وتثبيت الأدوات التي تحتاجها (مثال: curl و git)
RUN apt-get update && apt-get install -y \
    curl \
    git \
    python3 \
    && rm -rf /var/lib/apt/lists/*

# تحديد مجلد العمل
WORKDIR /app

# (اختياري) إذا كنت تريد تشغيل تطبيق معين، أضف أوامر التشغيل هنا
# CMD ["bash"] 
