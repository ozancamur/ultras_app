import 'package:dio/dio.dart';

import '../../constants/app/api/api_constants.dart';

final class NetworkService {
  static final NetworkService instance = NetworkService();

  final dio = Dio();

  Future<List<dynamic>> getAllCountries() async {
    final json = await dio.get(
      ApiConstants.api + ApiConstants.countries,
      options: Options(
        headers: ApiConstants.apiHeader,
      ),
    );
    List<dynamic> response = await json.data['response'];
    return response;
  }

  Future<List<dynamic>> getLeaguesOfCountry(String country) async {
    final json = await dio.get(
      ApiConstants.api + ApiConstants.leagues,
      queryParameters: Map.fromEntries([MapEntry("country", country)]),
      options: Options(
        headers: ApiConstants.apiHeader,
      ),
    );
    List<dynamic> response = await json.data['response'];
    return response;
  }

  Future<List<dynamic>> getTeamsOfLeague(int leagueID) async {
    final json = await dio.get(
      ApiConstants.api + ApiConstants.teams,
      queryParameters: Map.fromEntries([
        MapEntry("league", leagueID),
        MapEntry('season', DateTime.now().year)
      ]),
      options: Options(
        headers: ApiConstants.apiHeader,
      ),
    );
    List<dynamic> response = await json.data['response'];
    return response;
  }

  Future<List<dynamic>> getLeaguesAndCups() async {
    final json = await dio.get(
      ApiConstants.api + ApiConstants.leagues,
      queryParameters: Map.fromEntries(
        [
          MapEntry('season', DateTime.now().year.toString()),
        ]
      ),
      options: Options(
        headers: ApiConstants.apiHeader,
      ),
    );
    List<dynamic> response = await json.data['response'];
    return response;
  }

  Future<List<dynamic>> getFixture(int leagueID) async {
    final json = await dio.get(
      ApiConstants.api + ApiConstants.fixtures,
      queryParameters: Map.fromEntries([
        MapEntry("league", leagueID),
        MapEntry('season', DateTime.now().year,)
      ]),
      options: Options(headers: ApiConstants.apiHeader),
    );
    List<dynamic> response = await json.data['response'];
    return response;
  }
}
