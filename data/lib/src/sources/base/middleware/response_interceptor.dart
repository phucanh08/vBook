import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared/shared.dart';

import '../../../mappers/base/base_error_response_mapper.dart';
import '../../../mappers/base/base_success_response_mapper.dart';
import '../exception_mapper/dio_exception_mapper.dart';
import 'base_interceptor.dart';

@Injectable()
class ResponseInterceptor<D, T> extends BaseInterceptor {
  ResponseInterceptor({
    required this.successResponseMapperType,
    required this.errorResponseMapperType,
    required this.decoder,
  });

  final SuccessResponseMapperType successResponseMapperType;
  final ErrorResponseMapperType errorResponseMapperType;
  final Decoder<D>? decoder;

  @override
  int get priority => BaseInterceptor.connectivityPriority;

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final response = BaseSuccessResponseMapper<D, T>.fromType(
      successResponseMapperType,
    ).map(options.data, decoder);

    return handler.next(options.copyWith(data: response));
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    response.data = BaseSuccessResponseMapper<D, T>.fromType(successResponseMapperType)
        .map(response.data, decoder);
    handler.next(response);
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException error, ErrorInterceptorHandler handler) {
    throw DioExceptionMapper(
      BaseErrorResponseMapper.fromType(errorResponseMapperType),
    ).map(error);
  }
}
