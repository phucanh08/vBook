import 'pagination.dart';
export 'pagination.dart';

abstract class BaseInput {
  const BaseInput();
}

abstract class BaseOutput {
  const BaseOutput();
}

abstract class PaginationInput extends BaseInput {
  const PaginationInput({required this.page});

  final Page page;
}
