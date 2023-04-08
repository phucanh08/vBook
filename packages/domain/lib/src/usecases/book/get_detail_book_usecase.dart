import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetDetailBookUseCase
    extends BaseFutureUseCase<DetailBookInput, DetailBookOutput> {
  // GetDetailBookUseCase(this.bookRepository);

  // final BookRepository bookRepository;

  @override
  Future<DetailBookOutput> buildUseCase(DetailBookInput input) async {
    // final book = await bookRepository.getDetail();

    return const DetailBookOutput(
      book: Book(
        id: 'https://metruyencv.com/truyen/nha-ta-chuong-quy-dung-la-ma-dao-khoi-thu',
        imageUrl:
            'https://static.cdnno.com/poster/nha-ta-chuong-quy-dung-la-ma-dao-khoi-thu/300.jpg?1680777795',
        name: 'Nhà Ta Chưởng Quỹ Đúng Là Ma Đạo Khôi Thủ',
        description:
            '"Cần biết ít ngày nã Vân Chí, từng khen người ở giữa hạng nhất." '
            'Mọi người đều biết, ta Diệp Thời An chưa từng đi đường thường. '
            'Vừa tròn mười tám tuổi ngày đầu tiên, bắt đầu bị thẹn quá thành giận nữ Kiếm Tiên truy sát... '
            'Nghĩ xông xáo giang hồ làm kia chính đạo Kiếm Tiên, lại bị ma đạo khôi thủ hố thành tiểu đệ. . . '
            'Muốn làm cái thẳng thắn cương nghị kẻ kiên cường, lại bị vị hôn thê cường thế đẩy ngược, chạy trối chết. . . Ta liền muốn phổ phổ thông thông luyện cái võ, nhưng lại mẹ nó tu thành trường sinh cửu thị thứ nhất tiên. . .',
        author: 'Vãn Phong Như Cố',
        numOfChapters: 68,
        status: BookStatus.coming,
      ),
    );
  }
}

class DetailBookInput extends BaseInput {}

class DetailBookOutput extends BaseOutput {
  const DetailBookOutput({required this.book});

  final Book book;
}
