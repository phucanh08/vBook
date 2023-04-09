import '../../../domain.dart';

abstract class BookRepository {
  Future<Book> getBookById(String id);

  Future<Pagination<BookExtension>> getPagination(Page page);
  Future<Pagination<BookExtension>> getLibraryBook(Page page);
  Future<Pagination<BookExtension>> getHistoryBook(Page page);
}
