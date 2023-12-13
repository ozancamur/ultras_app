import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../constants/api/api_constants.dart';

final class NetworkManager {
  static NetworkManager? _instance;
  static NetworkManager? get instance {
    _instance ??= NetworkManager._init();
    return _instance;
  }

  var dio = Dio();

  NetworkManager._init() {
    final baseOptions = BaseOptions(
        baseUrl: ApiConstants.baseUrl, headers: ApiConstants.headers);

    dio = Dio(baseOptions);

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          
        },
        onError: (error, handler) {
          return debugPrint('''
        xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
        -----------------------------------
        |||||| NETWORK MANAGER ERROR ||||||
        -----------------------------------
          error message:
        ${error.message}
        ...................................
        -----------------------------------
        |||||| NETWORK MANAGER ERROR ||||||
        -----------------------------------
        xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
        ''');
        },
      ),
    );
  }
}



