# finance_tracker

To manage own financial expense

📊 Finance Tracker

Finance Tracker – bu Flutter asosida yaratilgan xarajatlarni kuzatish ilovasi. Foydalanuvchi o‘z
xarajatlarini qo‘shishi, statistikani ko‘rishi, profilni boshqarishi va push-notification orqali
xabarnomalar olishi mumkin.

✨ Xususiyatlar

🔑 Autentifikatsiya – Firebase Auth orqali login/register

💸 Xarajatlarni boshqarish – yangi xarajat qo‘shish va tarixni ko‘rish

📊 Statistika – grafiklar orqali moliya tahlili

🏠 Onboarding – birinchi marta ochilganda yo‘l-yo‘riq

🔔 Push Notifications – Firebase Messaging + Local Notifications

🎨 Custom UI – flashy_tab_bar2, animate_do, toastification kabi kutubxonalar bilan chiroyli interfeys

🌑 Light/Dark Theme qo‘llab-quvvatlanadi

🛠 Texnologiyalar

Flutter (Dart SDK ^3.7.0)

State Management: flutter_bloc, equatable

Dependency Injection: get_it, injectable

Firebase: firebase_core, firebase_auth, firebase_messaging, cloud_firestore

Networking: dio

Local Storage: hive, hive_flutter, path_provider

Notifications: flutter_local_notifications

Routing: go_router

📂 Loyiha strukturasi
lib/
│── core/ # Umumiy core qismlar (DI, network, exceptions, utils va h.k.)
│── features/ # Feature-based folder structure
│ ├── auth # Auth (login/register/logout)
│ ├── add_expense # Xarajat qo‘shish
│ ├── expenses # Xarajatlar tarixi
│ ├── statistics # Statistika ekrani
│ ├── profile # Foydalanuvchi profili
│ ├── onboarding # Onboarding ekranlari
│ └── home # Asosiy tab bar sahifalari
│── main.dart # App entry point

🚀 O‘rnatish

Repository’ni clone qiling:

git clone https://github.com/Jahongir0203/finance_tracker
cd finance_tracker

Paketlarni o‘rnating:
 
# flutter pub get

Firebase konfiguratsiyasini qo‘shing:

google-services.json (Android uchun android/app ichiga)

GoogleService-Info.plist (iOS uchun ios/Runner ichiga)

Freezed Bloclarni va splash screen build qilish:

# flutter pub run build_runner build --delete-conflicting-outputs

# flutter pub run flutter_native_splash:create

Ilovani ishga tushirish:

# flutter run

Ilovani yuklab olish uchun link
[Ilovaning Apksi
](https://drive.google.com/file/d/129QZUlnx_IPX3MhhLJ2gFm9PPsQXSZkh/view)