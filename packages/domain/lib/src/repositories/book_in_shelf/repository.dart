import 'package:domain/domain.dart';

abstract class BookInShelfRepository {
  Future<GetBookInLocalStorageOutput> getDetailById(String id);
  Future<GetBooksInShelfOutput> getBooksInShelf(Page page);
  Future<AddBookToShelfOutput> addBookToShelf(AddBookToShelfInput input);
  Future<UpdateBookInShelfOutput> update(UpdateBookInShelfInput input);
  Future<bool> delete(String id);

  Future<GetHistoryBooksOutput> getHistoryBooks(Page page);
  Future<bool> deleteHistoryBookById(String id);
}