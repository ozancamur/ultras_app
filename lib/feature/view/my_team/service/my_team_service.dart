import 'package:dio/dio.dart';

import '../../../../core/constants/api/api_constants.dart';

class MyTeamService {
  final dio = Dio();

  Future<List<dynamic>> getAllCountries() async {
    final json = await dio.get(
      ApiConstants.BASE_URL + ApiConstants.COUNTRIES,
      options: Options(
        headers: ApiConstants.HEADERS,
      ),
    );
    List<dynamic> response = await json.data['response'];
    return response;
  }

  Future<List<dynamic>> getLeaguesOfCountry(String country) async {
    final json = await dio.get(
      ApiConstants.BASE_URL + ApiConstants.LEAGUES,
      queryParameters: Map.fromEntries([MapEntry("country", country)]),
      options: Options(
        headers: ApiConstants.HEADERS,
      ),
    );
    List<dynamic> response = await json.data['response'];
    return response;
  }

  Future<List<dynamic>> getTeamsOfLeague(int leagueID) async {
    final json = await dio.get(
      ApiConstants.BASE_URL + ApiConstants.TEAMS,
      queryParameters: Map.fromEntries([
        MapEntry("league", leagueID),
        MapEntry('season', DateTime.now().year)
      ]),
      options: Options(
        headers: ApiConstants.HEADERS,
      ),
    );
    List<dynamic> response = await json.data['response'];
    return response;
  }
}
