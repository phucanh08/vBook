import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          const Placeholder(),
          Container(
            height: 80,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 34),
            decoration: BoxDecoration(
              color: Colors.black38,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Row(
              children: BottomTab.values
                  .map(
                    (e) => Expanded(
                      child: MaterialButton(
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            e.icon,
                            const SizedBox(height: 8),
                            Text(e.title),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

enum BottomTab {
  home(icon: Icon(Icons.home, color: Colors.white,)),
  search(icon: Icon(Icons.search,color: Color(0xFFBCBAF7),)),
  myPage(icon: Icon(Icons.people, color: Color(0xFFBCBAF7),));

  const BottomTab({
    required this.icon,
  });

  final Icon icon;

  String get title {
    switch (this) {
      case BottomTab.home:
        return 'Bookshelf';
      case BottomTab.search:
        return 'search';
      case BottomTab.myPage:
        return 'myPage';
    }
  }
}
