abstract final class ApiConstants {
  ApiConstants._();

 static String baseUrl = "https://api-football-beta.p.rapidapi.com";
 //static String api = 'https://api-football-v1.p.rapidapi.com';

  static Map<String, dynamic> headers = {
    'X-RapidAPI-Key': 'd9b5e9d225msha680b437d8614cap1064cfjsnf5b07e9b354d',
    'X-RapidAPI-Host': 'api-football-beta.p.rapidapi.com'
  };

  static String countries = '/countries';
  static String leagues = '/leagues';
  static String teams = '/teams';
  static String fixtures = '/fixtures';

}