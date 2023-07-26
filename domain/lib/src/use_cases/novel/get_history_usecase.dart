import 'package:injectable/injectable.dart';

import '../../../domain.dart';

@injectable
class GetHistoryUseCase
    extends BaseStreamUseCase<GetHistoryInput, GetHistoryOutput> {
  @override
  Stream<GetHistoryOutput> buildUseCase(GetHistoryInput input) {
    final data = getIt<NovelRepository>().getHistory();

    return data.map((event) => GetHistoryOutput(event));
  }
}

class GetHistoryInput extends BaseInput {
  const GetHistoryInput();
}

class GetHistoryOutput extends BaseOutput {
  const GetHistoryOutput(this.data);

  final List<NovelModel> data;
}
