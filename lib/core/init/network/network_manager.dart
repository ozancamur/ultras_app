
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../constants/api/api_constants.dart';
import '../base/model/base_error.dart';
import '../base/model/base_model.dart';

final class NetworkManager {
  static NetworkManager? _instance;
  static NetworkManager? get instance {
    _instance ??= NetworkManager._init();
    return _instance;
  }

  var _dio = Dio();

  NetworkManager._init() {
    final baseOptions = BaseOptions(
      baseUrl: ApiConstants.BASE_URL,
      headers: ApiConstants.HEADERS,
    );

    _dio = Dio(baseOptions);

    _dio.interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) {
          // TODO error view
          BaseError(error.message);
        },
      ),
    );
  }

  Future<List<dynamic>> dioGet<T extends BaseModel>(
      String endpoint, T model, Map<String, dynamic>? queryParameters) async {
    try {
      final json = await _dio.get(
        ApiConstants.BASE_URL + endpoint,
        // options: Options(
        //   headers: ApiConstants.HEADERS,
        // ),
        queryParameters: queryParameters,
      );
      List<dynamic> response = await json.data['response'];
      return response;
    } catch (e) {
      debugPrint(
          '****-SE-**** NetworkManager ERROR ****-SE-****');
      return [];
    }
  }
}
