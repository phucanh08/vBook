
import '../../../dtos/dtos.dart';

abstract class BookRepository {
  Future<List<HomeDto>> home(String name);
  Future<List<GenreDto>> genre(String name);
  Future<DetailDto> detail(String name, String url);

  Future<ChapterDetailDto> chap();
  Future<List<BookDto>> gen();
  Future<List<BookDto>> rank();
  Future<List<BookDto>> search();
  Future<List<ChapterDto>> toc();
  Future<List<SourceDto>> sources();
}