
import 'package:data/src/dtos/dtos.dart';
import 'package:data/src/sources/remote/client_http.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeApi {
  HomeApi(@Named('git') this._dio);
  final Dio _dio;


  Future<List<HomeDto>> getList(String link) async {
    final response = await _dio.fetchUrl(link);
    final data =
    response['data'].map<HomeDto>((e) => HomeDto.fromJson(e)).toList();
    return data;
  }
}
