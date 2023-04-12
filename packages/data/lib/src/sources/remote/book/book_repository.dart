import 'package:data/data.dart';

abstract class BookRepository {
  Future<ChapterDetailDto> chap();
  Future<BookDto> detail();
  Future<List<BookDto>> gen();
  Future<List<FilterDto>> genre();
  Future<HomeDto> home();
  Future<List<BookDto>> rank();
  Future<List<BookDto>> search();
  Future<List<ChapterDto>> toc();
  Future<List<SourceDto>> sources();
}