import 'package:dio/dio.dart';

class Apiservices {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;

  Apiservices(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get("$_baseUrl$endPoint");
    return response.data;
  }
}
