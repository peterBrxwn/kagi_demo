enum Environment { development, production }

class AppConfig {
  AppConfig._();

  static String get baseUrl => 'https://kite.kagi.com';
  static Environment get environment => Environment.development;
}
