import 'package:auto_route/auto_route.dart';
import 'package:resources/resources.dart';

import '../../app.dart';
import 'bloc/home_bloc.dart';

export 'tabs/tabs.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BasePageState<HomePage, HomeBloc> {

  @override
  Widget buildPage(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: const [
        BookShelfTabRouter(),
        HistoryBookTabRouter(),
      ],
      animatePageTransition: true,
      builder: (context, child, controller) {
        return Scaffold(
          appBar: CustomAppBar(
            titleSpacing: -10,
            leading: IconButton(
              onPressed: () {},
              icon: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://antimatter.vn/wp-content/uploads/2022/11/hinh-anh-gai-xinh-trung-quoc.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            title: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TabBar(
                    controller: controller,
                    dividerColor: Colors.transparent,
                    tabs: [
                      Tab(text: t.home.shelf_book),
                      Tab(text: t.home.history.title),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
            onSearchButtonPressed: () => null,
            onMoreButtonPressed: () => null,
          ),
          body: child,
          bottomNavigationBar: NavigationBar(
            onDestinationSelected: (index) {
              bloc.add(NavigationBarDestinationSelected(index));
            },
            destinations: [
              CustomNavigationDestination(
                faCodePoint: FaCodePoint.houseBlank,
                label: t.home.shelf_book,
              ),
              CustomNavigationDestination(
                faCodePoint: FaCodePoint.magnifyingGlass1,
                label: t.home.discover,
              ),
              CustomNavigationDestination(
                faCodePoint: FaCodePoint.commentCaptions,
                label: t.home.community,
              ),
              CustomNavigationDestination(
                faCodePoint: FaCodePoint.circleUser,
                label: t.home.individual,
              ),
            ],
          ),
        );
      },
    );
  }
}
