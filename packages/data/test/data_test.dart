import 'dart:async';

import 'package:data/src/sources/vbook_extensions/bachngocsach/src/genre.dart';


Future<void> main() async {
  var match = await genre();
  print(match);
}
