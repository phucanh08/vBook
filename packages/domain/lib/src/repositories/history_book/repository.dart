import 'package:domain/domain.dart';

abstract class HistoryBookRepository {
  Future<GetHistoryBooksOutput> getList(Page page);
  Future create();
  Future update();
  Future<bool> deleteById(String id);
  Future<bool> deleteAll();
}