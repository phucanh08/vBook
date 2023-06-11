import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetListLibraryPluginUseCase
    extends BaseFutureUseCase<GetListLibraryPluginInput, GetListLibraryPluginOutput> {
  @override
  Future<GetListLibraryPluginOutput> buildUseCase(GetListLibraryPluginInput input) async {
    final data = await getIt<PluginRepository>().getListLibrary();

    return GetListLibraryPluginOutput(data);
  }
}

class GetListLibraryPluginInput extends BaseInput {}

class GetListLibraryPluginOutput extends BaseOutput {
  const GetListLibraryPluginOutput(this.data);

  final List<PluginModel> data;
}
