
import 'package:dio/dio.dart';

class DioHelp{
  static Dio? dio;


  static init()
  {
    dio = Dio(
      BaseOptions(baseUrl: '', receiveDataWhenStatusError: true)
    );
  }

  static Future<Response> getData({required String url, Map<String, dynamic>? query, })
  async{
    dio!.options.headers = {

    };
    return await dio!.get(url, queryParameters: query);
  }
}