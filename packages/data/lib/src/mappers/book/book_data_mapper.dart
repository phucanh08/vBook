// import 'package:data/data.dart';
// import 'package:domain/domain.dart';
//
// import '../base/base.dart';
//
// class BookDataMapper extends BaseDataMapper<BookDto, Book> {
//   @override
//   Book mapToEntity(BookDto? data) {
//     int status;
//     if (data?.status == "Đang ra") {
//       status = 0;
//     } else {
//       status = 1;
//     }
//
//     return Book(
//       id: data?.id ?? 0,
//       source: data?.source ?? 0,
//       favorite: data?.favorite ?? false,
//       lastUpdate: data?.lastUpdate ?? 0,
//       dateAdded: data?.dateAdded ?? DateTime.now(),
//       viewerFlags: data?.viewerFlags ?? 0,
//       chapterFlags: data?.chapterFlags ?? 0,
//       coverLastModified: data?.coverLastModified ?? 0,
//       url: data?.url ?? '',
//       title: data?.title ?? '',
//       status: data?.status ?? 0,
//       initialized: data?.initialized ?? false,
//     );
//   }
// }
