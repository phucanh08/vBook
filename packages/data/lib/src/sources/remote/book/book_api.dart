import 'package:data/src/dtos/book/book_dto.dart';
import 'package:data/src/dtos/chapter/chapter_dto.dart';
import 'package:data/src/dtos/source/source_dto.dart';
import 'package:data/src/sources/remote/book/book_repository.dart';

class BookApi extends BookRepository{
  @override
  Future<ChapterDetailDto> chap() {
    // TODO: implement chap
    throw UnimplementedError();
  }

  @override
  Future<BookDto> detail() {
    // TODO: implement detail
    throw UnimplementedError();
  }

  @override
  Future<List<BookDto>> gen() {
    // TODO: implement gen
    throw UnimplementedError();
  }

  @override
  Future<List<FilterDto>> genre() {
    // TODO: implement genre
    throw UnimplementedError();
  }

  @override
  Future<HomeDto> home() {
    // TODO: implement home
    throw UnimplementedError();
  }

  @override
  Future<List<BookDto>> rank() {
    // TODO: implement rank
    throw UnimplementedError();
  }

  @override
  Future<List<BookDto>> search() {
    // TODO: implement search
    throw UnimplementedError();
  }

  @override
  Future<List<ChapterDto>> toc() {
    // TODO: implement toc
    throw UnimplementedError();
  }
}