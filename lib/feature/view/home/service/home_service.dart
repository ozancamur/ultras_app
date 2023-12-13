import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ultras_app/core/constants/api/api_constants.dart';

class HomeService {
  final dio = Dio();

  
  Future<List<dynamic>> getLeaguesAndCups() async {
    try {
      final json = await dio.get(
      ApiConstants.baseUrl + ApiConstants.leagues,
      queryParameters: Map.fromEntries(
        [
          MapEntry('season', DateTime.now().year.toString()),
        ]
      ),
      options: Options(
        headers: ApiConstants.headers,
      ),
    );
    List<dynamic> response = await json.data['response'];
    return response;
    } catch(e) {
            debugPrint(
          '****-SE-**** HomeService - getLeaguesAndCups Function ERROR ****-SE-****');
      return [];
    }
  }
}
