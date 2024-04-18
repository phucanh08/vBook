import 'package:auto_route/annotations.dart';
import 'package:resources/resources.dart';

import '../../../../app.dart';
import '../../../issue/list/issues_list_view.dart';

@RoutePage(name: 'SuggestAndReportTabRoute')
class SuggestAndReportTab extends StatefulWidget {
  const SuggestAndReportTab({super.key});

  @override
  State<SuggestAndReportTab> createState() => _SuggestAndReportTabState();
}

class _SuggestAndReportTabState extends State<SuggestAndReportTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        automaticallyImplyLeading: true,
        title: Text(t.community.suggestions_and_bug_reports),
        onSearchButtonPressed: () => null,
        onPlusButtonPressed: (offset) => showMenu(
          context: context,
          position: RelativeRect.fromLTRB(offset.dx, offset.dy, 0, 0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          items: [
            PopupMenuItem(
              value: 1,
              child: Text("Báo lỗi ứng dụng"),
            ),
            PopupMenuItem(
              value: 2,
              child: Text("Báo lỗi phần mở rộng"),
            ),
            PopupMenuItem(
              value: 3,
              child: Text("Yêu cầu thêm tính năng"),
            ),
            PopupMenuItem(
              value: 4,
              child: Text("Yêu cầu thêm phần mở rộng"),
            ),
          ],
        ),
      ),
      body: IssuesListView(),
    );
  }
}
