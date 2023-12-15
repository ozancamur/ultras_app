import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/api/api_constants.dart';

class FixtureService {
  //static final FixtureService instance = FixtureService();

  final dio = Dio();

  Future<List<dynamic>> getFixture(int leagueID) async {
    try {
      final json = await dio.get(
        ApiConstants.BASE_URL + ApiConstants.FIXTURES,
        queryParameters: Map.fromEntries(
          [
            const MapEntry("league", 187),
           const MapEntry('season', 2023),
          ],
        ),
        options: Options(headers: ApiConstants.HEADERS),
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
