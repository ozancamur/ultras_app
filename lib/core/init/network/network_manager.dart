import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../constants/api/api_constants.dart';
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
        onRequest: (options, handler) {},
        onResponse: (response, handler) {
          return response.data;
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

  Future dioGet<T extends BaseModel>(String path, T model) async {
    final response = await _dio.get(path);
    switch(response.statusCode) {
      case HttpStatus.ok:
      final responseBody = response.data;
      if(responseBody is List) { 
        return responseBody.map((e) => model.fromJson(e)).toList();
      } 
      else if( responseBody is Map<String, Object>) {
        return model.fromJson(responseBody);
       } 
      return responseBody;
      default:
    }
  }
}
