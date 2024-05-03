class Constants {
  //ADD BASE URL HERE
  static String appBaseUrl = 'https://api.qwizeen.io/';
  static const String identityStageBaseUrl = 'https://identity.staging.qwizeen.stagingserver.io/';
  static const String identityDevBaseUrl = 'https://identity.dev.stagingserver.io/';
  static const String identityQCBaseUrl = 'https://identity.qc.stagingserver.io/';

  //AUTH
  static const String loginApiUrl = '/api/auth/login';
  static const String usersApiUrl = '/api/auth/users';

  static String empty = '';
  static bool isEmpty = false;
  static String apiToken = '';
  static int zero = 0;
  static double zeroDec = 0.0;
  static int apiTimeout = 200000;
  static int dataDelayMilliseconds = 200;
  static int tokenRefreshThreshold = 2;
}
