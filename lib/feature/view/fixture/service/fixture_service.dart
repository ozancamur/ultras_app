import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ultras_app/core/constants/api/api_constants.dart';

class FixtureService {
  //static final FixtureService instance = FixtureService();

  final dio = Dio();

  Future<List<dynamic>> getFixture(int leagueID) async {
    try {
      final json = await dio.get(
        ApiConstants.baseUrl + ApiConstants.fixtures,
        queryParameters: Map.fromEntries(
          [
            const MapEntry("league", 187),
           const MapEntry('season', 2023),
          ],
        ),
        options: Options(headers: ApiConstants.headers),
      );
      List<dynamic> response = await json.data['response'];
      return response;
    } catch (e) {
      debugPrint(
          '****-SE-**** FixtureService - getFixture Function ERROR ****-SE-****');
      return [];
    }
  }
}
