import 'package:auto_route/annotations.dart';
import 'package:resources/resources.dart';

import '../../../../app.dart';

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
        onMoreButtonPressed: () => null,
      ),
    );
  }
}
