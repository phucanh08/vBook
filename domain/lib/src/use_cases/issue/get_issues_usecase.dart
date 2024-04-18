import 'package:injectable/injectable.dart';

import '../../../domain.dart';

@injectable
class GetIssuesUseCase
    extends BasePaginationUseCase<GetIssuesInput, Pagination<GetIssuesOutput>> {
  @override
  Future<Pagination<GetIssuesOutput>> buildUseCase(GetIssuesInput input) async {
    final data = [
      Issue(
        id: 0,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        createdBy: 1,
        updatedBy: 1,
        title: 'Lỗi chức năng ABC',
        reproductionStep: 'Ví dụ: \n1. Bước 1, \n2. Bước 2, \n3. Bước 3,..',
        expectedResult: 'Ví dụ: "Nó phải hoạt động như thế này…"',
        actualResult: 'Ví dụ: "Nó đang bị như thế này…"',
        appVersion: '1.0.0',
        deviceInformation: 'Red Mi note 8 pro',
        status: IssueStatus.opened,
      )
    ];

    return Pagination(items: [GetIssuesOutput(data)], hasNext: false);
  }
}

class GetIssuesInput extends BasePaginationInput {
  GetIssuesInput({required super.page});
}

class GetIssuesOutput extends BaseOutput {
  const GetIssuesOutput(this.data);

  final List<Issue> data;
}
