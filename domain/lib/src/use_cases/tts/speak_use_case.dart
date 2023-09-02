import 'package:injectable/injectable.dart';

import '../../../domain.dart';

@injectable
class SpeakUseCase
    extends BaseFutureUseCase<SpeakInput, SpeakOutput> {
  @override
  Future<SpeakOutput> buildUseCase(SpeakInput input) async {
    final data = await getIt<TTSRepository>().speak(input.text);

    return SpeakOutput(data);
  }
}

class SpeakInput extends BaseInput {
  const SpeakInput(this.text);
  final String text;
}

class SpeakOutput extends BaseOutput {
  const SpeakOutput(this.data);
  final bool data;
}
