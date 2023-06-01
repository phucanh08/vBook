import 'package:domain/domain.dart';

abstract class BookInInternetRepository {
  Future<GetDetailBookInInternetOutput> getDetailById(String id);
  Future<GetBooksInInternetOutput> getList(GetBooksInInternetInput input);
}