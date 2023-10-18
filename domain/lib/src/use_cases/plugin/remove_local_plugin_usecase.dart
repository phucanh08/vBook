import 'package:injectable/injectable.dart';

import '../../../domain.dart';

@injectable
class RemoveLocalPluginUseCase
    extends BaseFutureUseCase<RemoveLocalPluginInput, RemoveLocalPluginOutput> {
  @override
  Future<RemoveLocalPluginOutput> buildUseCase(RemoveLocalPluginInput input) async {
    final data = await getIt<PluginRepository>().removeLocal(input.id);

    return RemoveLocalPluginOutput(data);
  }
}

class RemoveLocalPluginInput extends BaseInput {
  const RemoveLocalPluginInput(this.id);
  final int id;
}

class RemoveLocalPluginOutput extends BaseOutput {
  const RemoveLocalPluginOutput(this.data);
  final bool data;
}
