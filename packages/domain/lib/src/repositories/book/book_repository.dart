import '../../../domain.dart';

abstract class BookRepository {
  Future<Book> getBookById(String id);

  Future<PaginationBookOutput> pagination(Page page);
  Future<GetLibraryBookOutput> getLibraryBook(Page page);
  Future<GetHistoryBookOutput> getHistoryBook(Page page);
}
