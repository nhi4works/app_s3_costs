# s3_costs

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

flutter clean
cd .\android\
.\gradlew clean
cd ..
flutter pub get
テスト用
flutter build appbundle --release
本番用
flutter build appbundle --release --dart-define=USE_TEST_ADS=false
