import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ultras_app/core/constants/api/api_constants.dart';

class FixtureService {
  //static final FixtureService instance = FixtureService();

  final dio = Dio();

  Future<List<dynamic>> getFixture(int leagueID) async {
    try {
      final json = await dio.get(
        ApiConstants.api + ApiConstants.fixtures,
        queryParameters: Map.fromEntries(
          [
          //   const MapEntry("league", '23'),
          //  const MapEntry('season', '2023'),
            const MapEntry('date', '2020-02-06'),
          ],
        ),
        options: Options(headers: ApiConstants.apiHeader),
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
