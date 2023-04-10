import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: BookRepository)
class BookRepositoryImpl implements BookRepository {
  @override
  Future<Book> getBookById(String id) async {
    return const Book(
      id: 'xich-tam-tuan-thien',
      url: 'xich-tam-tuan-thien',
      host: 'https://metruyencv.com',
      imgUrl:
          'https://static.cdnno.com/poster/xich-tam-tuan-thien/300.jpg?1612524612',
      title: 'Xích Tâm Tuần Thiên',
      description: '''Thời đại thượng cổ, Yêu tộc tuyệt tích. Thời đại cận cổ, 
                  Long tộc biến mất. Thần đạo đang thịnh thời đại đã như khói, 
                  phi kiếm đỉnh cao nhất thời đại cuối cùng trầm luân. . .\n\n
                  Thế giới này xảy ra chuyện gì?\n\n
                  Cái kia mai táng tại bên trong dòng sông thời gian chân tướng lịch sử, ai đến lắng nghe?\n\n
                  Núi sông ngàn dặm viết thây nằm, càn khôn trăm năm tô lại hổ đói.\n\n
                  Thiên địa chí công như vô tình,\n\n
                  Ta có xích tâm một viên, lấy tuần thiên!\n\n
                  -----------------------
                  Cảnh giới tu luyện chia làm cửu cấp, cửu thấp nhất:
                  Du Mạch cảnh -> Chu Thiên cảnh -> Thông Thiên cảnh -> Đằng Long cảnh 
                  -> Nội Phủ cảnh -> Ngoại Lâu Cảnh -> Thần Lâm cảnh-> Động Chân cảnh--> 
                  Diễn Đạo cảnh---> Siêu Thoát.....''',
      author: 'Tình Hà Dĩ Thậm',
      status: BookStatus.coming,
    );
  }

  @override
  Future<GetHistoryBookOutput> getHistoryBook(Page page) async {
    return GetHistoryBookOutput(
      items: List.generate(
        page.size,
        (index) => Output2(
            BookExtension(
              id: 'id2_$index',
              bookId: '2$index',
              chapId: '1',
              favorite: true,
              isFirstTime: index == 0,
              viewFlags: [],
              duration: 0,
              createAt: DateTime.now(),
              updateAt: DateTime.now(),
              readAt: DateTime.now(),
              isRemote: false,
            ),
            Book(
              id: '2$index',
              url: 'xich-tam-tuan-thien',
              host: 'https://metruyencv.com',
              imgUrl:
              'https://static.cdnno.com/poster/xich-tam-tuan-thien/300.jpg?1612524612',
              title: 'Xích Tâm Tuần Thiên',
              description:
              '''Thời đại thượng cổ, Yêu tộc tuyệt tích. Thời đại cận cổ, 
                  Long tộc biến mất. Thần đạo đang thịnh thời đại đã như khói, 
                  phi kiếm đỉnh cao nhất thời đại cuối cùng trầm luân. . .\n\n
                  Thế giới này xảy ra chuyện gì?\n\n
                  Cái kia mai táng tại bên trong dòng sông thời gian chân tướng lịch sử, ai đến lắng nghe?\n\n
                  Núi sông ngàn dặm viết thây nằm, càn khôn trăm năm tô lại hổ đói.\n\n
                  Thiên địa chí công như vô tình,\n\n
                  Ta có xích tâm một viên, lấy tuần thiên!\n\n
                  -----------------------
                  Cảnh giới tu luyện chia làm cửu cấp, cửu thấp nhất:
                  Du Mạch cảnh -> Chu Thiên cảnh -> Thông Thiên cảnh -> Đằng Long cảnh 
                  -> Nội Phủ cảnh -> Ngoại Lâu Cảnh -> Thần Lâm cảnh-> Động Chân cảnh--> 
                  Diễn Đạo cảnh---> Siêu Thoát.....''',
              author: 'Tình Hà Dĩ Thậm',
              status: BookStatus.coming,
            )),
      ),
      page: page,
      total: page.size,
    );
  }

  @override
  Future<GetLibraryBookOutput> getLibraryBook(Page page) async {
    return GetLibraryBookOutput(
        items: List.generate(
          page.size,
          (index) => Output2(
              BookExtension(
                id: 'id2_$index',
                bookId: '2$index',
                chapId: '1',
                favorite: true,
                isFirstTime: index == 0,
                viewFlags: [],
                duration: 0,
                createAt: DateTime.now(),
                updateAt: DateTime.now(),
                readAt: DateTime.now(),
                isRemote: false,
              ),
              Book(
                id: '2$index',
                url: 'xich-tam-tuan-thien',
                host: 'https://metruyencv.com',
                imgUrl:
                'https://static.cdnno.com/poster/xich-tam-tuan-thien/300.jpg?1612524612',
                title: 'Xích Tâm Tuần Thiên',
                description:
                '''Thời đại thượng cổ, Yêu tộc tuyệt tích. Thời đại cận cổ, 
                  Long tộc biến mất. Thần đạo đang thịnh thời đại đã như khói, 
                  phi kiếm đỉnh cao nhất thời đại cuối cùng trầm luân. . .\n\n
                  Thế giới này xảy ra chuyện gì?\n\n
                  Cái kia mai táng tại bên trong dòng sông thời gian chân tướng lịch sử, ai đến lắng nghe?\n\n
                  Núi sông ngàn dặm viết thây nằm, càn khôn trăm năm tô lại hổ đói.\n\n
                  Thiên địa chí công như vô tình,\n\n
                  Ta có xích tâm một viên, lấy tuần thiên!\n\n
                  -----------------------
                  Cảnh giới tu luyện chia làm cửu cấp, cửu thấp nhất:
                  Du Mạch cảnh -> Chu Thiên cảnh -> Thông Thiên cảnh -> Đằng Long cảnh 
                  -> Nội Phủ cảnh -> Ngoại Lâu Cảnh -> Thần Lâm cảnh-> Động Chân cảnh--> 
                  Diễn Đạo cảnh---> Siêu Thoát.....''',
                author: 'Tình Hà Dĩ Thậm',
                status: BookStatus.coming,
              )),
        ),
        page: page,
        total: page.size);
  }

  @override
  Future<PaginationBookOutput> pagination(Page page) async {
    return PaginationBookOutput(
      items: List.generate(
        page.size,
        (index) => Output2(
            BookExtension(
              id: 'id2_$index',
              bookId: '2$index',
              chapId: '1',
              favorite: true,
              isFirstTime: index == 0,
              viewFlags: [],
              duration: 0,
              createAt: DateTime.now(),
              updateAt: DateTime.now(),
              readAt: DateTime.now(),
              isRemote: false,
            ),
            Book(
              id: '2$index',
              url: 'xich-tam-tuan-thien',
              host: 'https://metruyencv.com',
              imgUrl:
                  'https://static.cdnno.com/poster/xich-tam-tuan-thien/300.jpg?1612524612',
              title: 'Xích Tâm Tuần Thiên',
              description:
                  '''Thời đại thượng cổ, Yêu tộc tuyệt tích. Thời đại cận cổ, 
                  Long tộc biến mất. Thần đạo đang thịnh thời đại đã như khói, 
                  phi kiếm đỉnh cao nhất thời đại cuối cùng trầm luân. . .\n\n
                  Thế giới này xảy ra chuyện gì?\n\n
                  Cái kia mai táng tại bên trong dòng sông thời gian chân tướng lịch sử, ai đến lắng nghe?\n\n
                  Núi sông ngàn dặm viết thây nằm, càn khôn trăm năm tô lại hổ đói.\n\n
                  Thiên địa chí công như vô tình,\n\n
                  Ta có xích tâm một viên, lấy tuần thiên!\n\n
                  -----------------------
                  Cảnh giới tu luyện chia làm cửu cấp, cửu thấp nhất:
                  Du Mạch cảnh -> Chu Thiên cảnh -> Thông Thiên cảnh -> Đằng Long cảnh 
                  -> Nội Phủ cảnh -> Ngoại Lâu Cảnh -> Thần Lâm cảnh-> Động Chân cảnh--> 
                  Diễn Đạo cảnh---> Siêu Thoát.....''',
              author: 'Tình Hà Dĩ Thậm',
              status: BookStatus.coming,
            )),
      ),
      page: page,
      total: page.size,
    );
  }
}
