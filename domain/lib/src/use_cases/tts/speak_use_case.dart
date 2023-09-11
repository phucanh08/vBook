import 'package:injectable/injectable.dart';

import '../../../domain.dart';

@injectable
class PlayUseCase extends BaseFutureUseCase<PlayInput, PlayOutput> {
  @override
  Future<PlayOutput> buildUseCase(PlayInput input) {
    return getIt<TTSRepository>().play(input.text).then(
          (event) => PlayOutput(),
        );
  }
}

class PlayInput extends BaseInput {
  const PlayInput(this.text);

  final String text;
}

class PlayOutput extends BaseOutput {}
