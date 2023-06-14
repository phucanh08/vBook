import 'package:data/src/dtos/dtos.dart';

List<HomeDto> home() {
  return [
    {"title": "Đề cử", "input": "/reader/recent-promote"},
    {"title": "Dịch", "input": "/reader/recent-bns"},
    {"title": "Convert", "input": "/reader/recent-cv"},
    {"title": "Sáng Tác", "input": "/reader/recent-sangtac"},
    {"title": "Sưu tầm", "input": "/reader/recent-st"},
    {"title": "Hoàn thành", "input": "/reader/recent-hoanthanh"}
  ].map((e) => HomeDto.fromJson(e)).toList();
}
