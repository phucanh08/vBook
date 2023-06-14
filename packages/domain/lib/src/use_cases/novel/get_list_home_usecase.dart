import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetListHomeUseCase
    extends BaseFutureUseCase<GetListHomeInput, GetListHomeOutput> {
  @override
  Future<GetListHomeOutput> buildUseCase(GetListHomeInput input) async {
    final data = await getIt<NovelRepository>().getHome(input.id);

    return GetListHomeOutput(data);
  }
}

class GetListHomeInput extends BaseInput {
  const GetListHomeInput(this.id);
  final String id;
}

class GetListHomeOutput extends BaseOutput {
  const GetListHomeOutput(this.data);

  final List<HomeModel> data;
}
