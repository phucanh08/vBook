import 'package:domain/domain.dart';

class GetListSourceUseCase
    extends BaseFutureUseCase<GetListSourceInput, GetListSourceOutput> {
  @override
  Future<GetListSourceOutput> buildUseCase(GetListSourceInput input) {
    return Future.value(const GetListSourceOutput(
      data: [
        SourceModel(
          source: 'https://truyenchu.vn',
          name: 'Truyện Chữ',
          iconUrl:
              'https://raw.githubusercontent.com/Darkrai9x/vbook-extensions/master/truyenchu/icon.png',
          type: 'novel',
        ),
        SourceModel(
          source: 'https://truyenazz.vn/',
          name: 'Truyện TR',
          iconUrl:
              'https://raw.githubusercontent.com/Darkrai9x/vbook-extensions/master/truyentr/icon.png',
          type: 'novel',
        ),
        SourceModel(
          source: 'https://truyen.tangthuvien.vn',
          name: 'Tàng Thư Viện',
          iconUrl:
              'https://raw.githubusercontent.com/Darkrai9x/vbook-extensions/master/tangthuvien/icon.png',
          type: 'novel',
        ),
        SourceModel(
          source: 'https://truyenyy.vip',
          name: 'Truyện YY',
          iconUrl:
              'https://raw.githubusercontent.com/Darkrai9x/vbook-extensions/master/truyenyy/icon.png',
          type: 'novel',
        ),
        SourceModel(
          source: 'https://wikidich8.com',
          name: 'Wiki Dịch',
          iconUrl:
              'https://raw.githubusercontent.com/Darkrai9x/vbook-extensions/master/wikidich/icon.png',
          type: 'novel',
        ),
        SourceModel(
          source: 'https://koanchay.info',
          name: 'Koanchay',
          iconUrl:
              'https://raw.githubusercontent.com/Darkrai9x/vbook-extensions/master/koanchay/icon.png',
          type: 'novel',
        ),
        SourceModel(
          source: 'https://sstruyen.vn',
          name: 'SS Truyện',
          iconUrl:
              'https://raw.githubusercontent.com/Darkrai9x/vbook-extensions/master/sstruyen/icon.png',
          type: 'novel',
        ),
        SourceModel(
          source: 'https://truyenqqq.vn',
          name: 'Truyện QQ',
          iconUrl:
              'https://raw.githubusercontent.com/Darkrai9x/vbook-extensions/master/truyenqq/icon.png',
          type: 'comic',
        ),
        SourceModel(
          source: 'https://chivi.app',
          name: 'Chivi',
          iconUrl:
              'https://raw.githubusercontent.com/Darkrai9x/vbook-extensions/master/chivi/icon.png',
          type: 'novel',
        ),
      ],
    ));
  }
}

class GetListSourceInput extends BaseInput {
  const GetListSourceInput();
}

class GetListSourceOutput extends BaseOutput {
  const GetListSourceOutput({
    required this.data,
  });

  final List<SourceModel> data;
}
