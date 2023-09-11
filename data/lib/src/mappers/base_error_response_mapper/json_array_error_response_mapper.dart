import 'package:injectable/injectable.dart';
import 'package:shared/shared.dart';

import '../base/base_error_response_mapper.dart';


@Injectable()
class JsonArrayErrorResponseMapper extends BaseErrorResponseMapper<List<dynamic>> {
  @override
  ServerError mapToEntity(List<dynamic>? data) {
    return ServerError(
      errors: data
          ?.map((jsonObject) => ServerErrorDetail(
        serverStatusCode: jsonObject['code'],
        message: jsonObject['message'],
      ))
          .toList(growable: false) ??
          [],
    );
  }
}