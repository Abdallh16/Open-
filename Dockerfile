# استخدام نسخة أوبونتو الرسمية كقاعدة
FROM ubuntu:latest

# تحديث النظام وتثبيت الأدوات الأساسية
RUN apt-get update && apt-get install -y \
    curl \
    git \
    python3 \
    && rm -rf /var/lib/apt/lists/*

# تحديد مجلد العمل داخل الحاوية
WORKDIR /app

# أمر افتراضي لإبقاء الحاوية تعمل (مفيد لبيئات الـ Shell)
CMD ["tail", "-f", "/dev/null"]
