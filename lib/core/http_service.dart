import 'package:dio/dio.dart';

class HttpService {
  final baseUrl = "https://api.github.com/search/users";
  late Dio dio;

  HttpService() {
    dio = Dio();
  }

  Future<dynamic> getRequest(String name) async {
    try {
      Response response = await dio.get(
        baseUrl,
        queryParameters: {
          'q': name,
          'per_page': 10
        },
        options: Options(
          headers: {
            'client_id': '77f48ec3b866807038eb', // generated on my own github account
            'client_secret': 'da0d168475f8225eab2a7f2a5fab5a35e4aba5bb', // generated on my own github account
          },
        ),
      );
      return response.data;
    } on DioError catch (e) {
      if (e.response?.statusCode == 401) {
        // todo kill session
      }
    }
  }
}
