import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetListLocalPluginUseCase
    extends BaseFutureUseCase<GetListLocalPluginInput, GetListLocalPluginOutput> {
  @override
  Future<GetListLocalPluginOutput> buildUseCase(GetListLocalPluginInput input) async {
    final data = await getIt<PluginRepository>().getListLocal();

    return GetListLocalPluginOutput(data);
  }
}

class GetListLocalPluginInput extends BaseInput {}

class GetListLocalPluginOutput extends BaseOutput {
  const GetListLocalPluginOutput(this.data);

  final List<PluginModel> data;
}
