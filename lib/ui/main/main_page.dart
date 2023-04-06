import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../app.dart';
import 'bloc/main_bloc.dart';
export 'widgets/widgets.dart';

// enum BottomTab {
//   home(icon: Icon(Icons.home), activeIcon: Icon(Icons.home)),
//   search(icon: Icon(Icons.search), activeIcon: Icon(Icons.search)),
//   myPage(icon: Icon(Icons.people), activeIcon: Icon(Icons.people));
//
//   const BottomTab({
//     required this.icon,
//     required this.activeIcon,
//   });
//
//   final Icon icon;
//   final Icon activeIcon;
//
//   String get title {
//     switch (this) {
//       case BottomTab.home:
//         return 'Bookshelf';
//       case BottomTab.search:
//         return 'search';
//       case BottomTab.myPage:
//         return 'myPage';
//     }
//   }
// }

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key, this.title = 'main'});

  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends BasePageState<MainPage, MainBloc> {
  final _bottomBarKey = GlobalKey();

  @override
  Widget buildPage(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        BookShelfTabRouter(),
        DiscoverTabRouter(),
        CommunityTabRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        (navigator as AppNavigatorImpl).tabsRouter = tabsRouter;

        return BottomNavigationBar(
          key: _bottomBarKey,
          currentIndex: tabsRouter.activeIndex,
          onTap: (index) {
            if (index == tabsRouter.activeIndex) {
              (navigator as AppNavigatorImpl).popUntilRootOfCurrentBottomTab();
            }
            tabsRouter.setActiveIndex(index);
          },
          showSelectedLabels: true,
          showUnselectedLabels: true,
          // unselectedItemColor: AppColors.current.primaryColor,
          // selectedItemColor: AppColors.current.primaryColor,
          type: BottomNavigationBarType.fixed,
          // backgroundColor: AppColors.current.primaryColor,
          items: BottomTab.values
              .map(
                (tab) => BottomNavigationBarItem(
                  label: tab.title,
                  icon: tab.icon,
                  activeIcon: tab.icon,
                ),
              )
              .toList(),
        );
      },
    );
  }
}
