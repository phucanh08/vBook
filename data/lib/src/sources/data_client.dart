import 'package:injectable/injectable.dart';

import 'base/client/rest_client.dart';
import 'local/local.dart';

@module
abstract class DataClient {
  @Named('currentApiClient')
  @singleton
  RestApiClient currentApiClient() => RestApiClient();

  @Named('LocalStorage')
  @singleton
  ObjectBox localStorage() => ObjectBox();
}
