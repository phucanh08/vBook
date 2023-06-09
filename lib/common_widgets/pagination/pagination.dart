import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared/shared.dart';

import '../../app.dart';

part 'grid.dart';
part 'list.dart';
part 'pagination_builder.dart';


abstract class PaginationWidget extends StatefulWidget{
  const PaginationWidget({super.key});
}
