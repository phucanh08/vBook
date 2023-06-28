import 'dart:async';

import 'package:data/src/sources/vbook_extensions/bachngocsach/src/chap.dart';


Future<void> main() async {
  final match = await chap('/reader/tu-luyen-bat-dau-tu-viec-don-gian-hoa-cong-phap-convert/ypbf');
  print(match);
}
