class AdConfig {
  // dart-defineから取得(指定されていなければtrue = テスト広告)
  static const bool useTestAds =
      bool.fromEnvironment('USE_TEST_ADS', defaultValue: true);
  static const String bannerTest = 'ca-app-pub-3940256099942544/6300978111';
  static const String bannerProd = 'ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx';

  static String get bannerAdUnitId => useTestAds ? bannerTest : bannerProd;
}
