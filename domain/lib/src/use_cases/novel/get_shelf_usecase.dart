import 'package:injectable/injectable.dart';

import '../../../domain.dart';

@injectable
class GetShelfUseCase extends BaseStreamUseCase<GetShelfInput, GetShelfOutput> {
  @override
  Stream<GetShelfOutput> buildUseCase(GetShelfInput input) {
    final data = getIt<NovelRepository>().getShelf();

    return data.map((event) => GetShelfOutput(event));
  }
}

class GetShelfInput extends BaseInput {
  const GetShelfInput();
}

class GetShelfOutput extends BaseOutput {
  const GetShelfOutput(this.data);

  final List<NovelModel> data;
}
