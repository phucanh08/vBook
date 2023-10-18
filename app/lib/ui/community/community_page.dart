import 'package:auto_route/auto_route.dart';
import 'package:resources/resources.dart';

import '../../app.dart';

@RoutePage()
class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        automaticallyImplyLeading: true,
        title: Text(t.community.chat),
        onMoreButtonPressed: () => null,
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          // bloc.add(NavigationBarDestinationSelected(index));
        },
        destinations: [
          CustomNavigationDestination(
            faCodePoint: FaCodePoint.commentCaptions,
            label: t.community.chat,
          ),
          CustomNavigationDestination(
            faCodePoint: FaCodePoint.shareFromSquare,
            label: t.community.share_book,
          ),
          CustomNavigationDestination(
            faCodePoint: FaCodePoint.squareList,
            label: t.community.discuss,
          ),
          CustomNavigationDestination(
            faCodePoint: FaCodePoint.flag,
            label: t.community.suggestions_and_bug_reports,
          ),
        ],
      ),
    );
  }
}
