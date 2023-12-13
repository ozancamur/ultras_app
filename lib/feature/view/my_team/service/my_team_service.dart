import 'package:dio/dio.dart';
import 'package:ultras_app/core/constants/api/api_constants.dart';

class MyTeamService {
  final dio = Dio();

  Future<List<dynamic>> getAllCountries() async {
    final json = await dio.get(
      ApiConstants.baseUrl + ApiConstants.countries,
      options: Options(
        headers: ApiConstants.headers,
      ),
    );
    List<dynamic> response = await json.data['response'];
    return response;
  }

  Future<List<dynamic>> getLeaguesOfCountry(String country) async {
    final json = await dio.get(
      ApiConstants.baseUrl + ApiConstants.leagues,
      queryParameters: Map.fromEntries([MapEntry("country", country)]),
      options: Options(
        headers: ApiConstants.headers,
      ),
    );
    List<dynamic> response = await json.data['response'];
    return response;
  }

  Future<List<dynamic>> getTeamsOfLeague(int leagueID) async {
    final json = await dio.get(
      ApiConstants.baseUrl + ApiConstants.teams,
      queryParameters: Map.fromEntries([
        MapEntry("league", leagueID),
        MapEntry('season', DateTime.now().year)
      ]),
      options: Options(
        headers: ApiConstants.headers,
      ),
    );
    List<dynamic> response = await json.data['response'];
    return response;
  }
}
