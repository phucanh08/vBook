import 'package:shared/shared.dart';

import '../base.dart';

abstract class BaseStreamUseCase<Input extends BaseInput, Output>
    extends BaseUseCase<Input, Stream<Output>> {
  Stream<Output> call(Input input) {
    return buildUseCase(input).log(runtimeType.toString());
  }
}
