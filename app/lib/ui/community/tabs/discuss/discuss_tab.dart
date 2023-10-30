import 'package:auto_route/annotations.dart';
import 'package:resources/resources.dart';

import '../../../../app.dart';

@RoutePage(name: 'DiscussTabRoute')
class DiscussTab extends StatefulWidget {
  const DiscussTab({super.key});

  @override
  State<DiscussTab> createState() => _DiscussTabState();
}

class _DiscussTabState extends State<DiscussTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        automaticallyImplyLeading: true,
        title: Text(t.community.discuss),
        onMoreButtonPressed: () => null,
      ),
    );
  }
}
