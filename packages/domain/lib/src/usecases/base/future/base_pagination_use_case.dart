import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

abstract class BasePaginationUseCase<Input extends PaginationInput, Output>
    extends BaseUseCase<Input, Future<Pagination<Output>>> {
  const BasePaginationUseCase();

  Future<Pagination<Output>> call(Input input) async {
    int pageNumber = input.page.number;
    int offset = input.page.offset;
    try {
      if (LogConfig.enableLogUseCaseInput) {
        logD(
          'LoadMoreUseCase Input: $input, pageNumber: $pageNumber, offset: $offset',
        );
      }
      final output = await buildUseCase(input);

      if (LogConfig.enableLogUseCaseOutput) {
        logD(
          'LoadMoreUseCase Output: output: $output, inputPageNumber: $pageNumber, inputOffset: $offset, outputTotal: ${output.total}',
        );
      }

      return output;
    } catch (e) {
      if (LogConfig.enableLogUseCaseError) {
        logE('FutureUseCase Error: $e');
      }

      throw e is AppException ? e : AppUncaughtException(e);
    }
  }
}
