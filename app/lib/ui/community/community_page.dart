import 'package:auto_route/auto_route.dart';
import 'package:resources/resources.dart';

import '../../app.dart';
import '../../di/di.dart';

export 'tabs/tabs.dart';

@RoutePage()
class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    final navigation = getIt<AppNavigator>();

    return Scaffold(
      body: const AutoRouter(),
      bottomNavigationBar: StatefulBuilder(builder: (context, setState) {
        return NavigationBar(
          selectedIndex: selectedIndex,
          onDestinationSelected: (index) {
            switch (index) {
              case 0:
                navigation.replace(const ChatTabRoute());
                break;
              case 1:
                navigation.replace(const ShareNovelTabRoute());
                break;
              case 2:
                navigation.replace(const DiscussTabRoute());
                break;
              default:
                navigation.replace(const SuggestAndReportTabRoute());
                break;
            }
            setState(() => selectedIndex = index);
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
        );
      }),
    );
  }
}
