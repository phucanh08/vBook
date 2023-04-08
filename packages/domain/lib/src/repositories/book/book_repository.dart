import '../../../domain.dart';

abstract class BookRepository {
  Future<Pagination<Book>> getPagination();
  Future<Book> getDetail();
}
