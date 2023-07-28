import 'package:shared/shared.dart';

import '../../../../domain.dart';

abstract class BasePaginationUseCase<Input extends BasePaginationInput, Output extends BasePaginationOutput >
    extends BaseUseCase<Input, Future<Output>> {
  const BasePaginationUseCase();

  Future<Output> call(Input input) async {
    final int pageNumber = input.page.number;
    final int offset = input.page.offset;
    try {
      if (LogConfig.enableLogUseCaseInput) {
        logD(
          'BasePaginationUseCase Input: $input, pageNumber: $pageNumber, offset: $offset',
        );
      }
      final output = await buildUseCase(input);

      if (LogConfig.enableLogUseCaseOutput) {
        logD(
          'BasePaginationUseCase Output: output: $output, inputPageNumber: $pageNumber, inputOffset: $offset, hasNext: ${output.hasNext}',
        );
      }

      return output;
    } catch (e,s) {
      if (LogConfig.enableLogUseCaseError) {
        logE('FutureUseCase Error: $e, $s');
      }

      throw e is AppException ? e : AppUncaughtException(e);
    }
  }
}
