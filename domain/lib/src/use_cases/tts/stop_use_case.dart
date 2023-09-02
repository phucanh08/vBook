import 'package:injectable/injectable.dart';

import '../../../domain.dart';

@injectable
class StopUseCase
    extends BaseFutureUseCase<StopInput, StopOutput> {
  @override
  Future<StopOutput> buildUseCase(StopInput input) async {
    final data = await getIt<TTSRepository>().stop();

    return StopOutput(data);
  }
}

class StopInput extends BaseInput {}

class StopOutput extends BaseOutput {
  const StopOutput(this.data);
  final bool data;
}
