import 'package:flutter/foundation.dart';
import 'package:shared/shared.dart';

import 'base.dart';


abstract class BaseUseCase<Input extends BaseInput, Output> with LogMixin {
  const BaseUseCase();

  @protected
  Output buildUseCase(Input input);
}
