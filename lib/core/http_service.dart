import 'package:dio/dio.dart';

class HttpService {
  final base = "https://api.github.com";
  final userSearch = "/search/users";
  final userDetailUrl = "/users/";
  late Dio dio;

  HttpService() {
    dio = Dio();
  }

  Future<dynamic> getRequest(String name) async {
    try {
      Response response = await dio.get(
        base + userSearch,
        queryParameters: {
          'q': name,
          'per_page': 10
        },
      );
      return response.data;
    } on DioError catch (e) {
      if (e.response?.statusCode == 401) {
        // todo kill session
      }
    }
  }

  Future<dynamic> getUserRequest(String name) async {
    try {
      Response response = await dio.get(
        base + userDetailUrl + name,
      );
      return response.data;
    } on DioError catch (e) {
      if (e.response?.statusCode == 401) {
        // todo kill session
      }
    }
  }
}
