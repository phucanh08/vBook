import 'package:injectable/injectable.dart';

import '../../../domain.dart';

@injectable
class SaveLocalPluginUseCase
    extends BaseFutureUseCase<SaveLocalPluginInput, SaveLocalPluginOutput> {
  @override
  Future<SaveLocalPluginOutput> buildUseCase(SaveLocalPluginInput input) async {
    final data = await getIt<PluginRepository>().saveLocal(input.model);

    return SaveLocalPluginOutput(data);
  }
}

class SaveLocalPluginInput extends BaseInput {
  const SaveLocalPluginInput(this.model);
  final PluginModel model;
}

class SaveLocalPluginOutput extends BaseOutput {
  const SaveLocalPluginOutput(this.data);
  final PluginModel data;
}
