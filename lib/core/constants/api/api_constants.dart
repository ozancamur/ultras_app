// ignore_for_file: non_constant_identifier_names

abstract final class ApiConstants {
  ApiConstants._();

 static String BASE_URL = "https://api-football-beta.p.rapidapi.com";
 //static String api = 'https://api-football-v1.p.rapidapi.com';

  static Map<String, dynamic> HEADERS = {
    'X-RapidAPI-Key': 'd9b5e9d225msha680b437d8614cap1064cfjsnf5b07e9b354d',
    'X-RapidAPI-Host': 'api-football-beta.p.rapidapi.com'
  };

  static String COUNTRIES = '/countries';
  static String LEAGUES = '/leagues';
  static String TEAMS = '/teams';
  static String FIXTURES = '/fixtures';

}
