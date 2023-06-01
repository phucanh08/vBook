import 'package:domain/domain.dart';

class GetCurrentSourceUseCase
    extends BaseFutureUseCase<GetCurrentSourceInput, GetCurrentSourceOutput> {
  @override
  Future<GetCurrentSourceOutput> buildUseCase(GetCurrentSourceInput input) {
    return Future.value(const GetCurrentSourceOutput(
      data: SourceModel(
        source: 'https://truyenchu.vn',
        name: 'Truyện Chữ',
        iconUrl:
            'https://raw.githubusercontent.com/Darkrai9x/vbook-extensions/master/truyenchu/icon.png',
        type: 'novel',
      ),
    ));
  }
}

class GetCurrentSourceInput extends BaseInput {
  const GetCurrentSourceInput();
}

class GetCurrentSourceOutput extends BaseOutput {
  const GetCurrentSourceOutput({
    required this.data,
  });

  final SourceModel data;
}
