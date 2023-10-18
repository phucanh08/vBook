import 'package:injectable/injectable.dart';

import '../../../domain.dart';

@injectable
class StopUseCase extends BaseFutureUseCase<StopInput, StopOutput> {
  @override
  Future<StopOutput> buildUseCase(StopInput input) {
    try {
      return getIt<TTSRepository>().stop().then((_) => StopOutput());
    } catch (e) {
      throw Exception(e);
    }
  }
}

class StopInput extends BaseInput {}

class StopOutput extends BaseOutput {}
