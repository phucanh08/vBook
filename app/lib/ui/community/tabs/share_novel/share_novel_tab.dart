import 'package:auto_route/annotations.dart';
import 'package:resources/resources.dart';

import '../../../../app.dart';

@RoutePage(name: 'ShareNovelTabRoute')
class ShareNovelTab extends StatefulWidget {
  const ShareNovelTab({super.key});

  @override
  State<ShareNovelTab> createState() => _ShareNovelTabState();
}

class _ShareNovelTabState extends State<ShareNovelTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        automaticallyImplyLeading: true,
        title: Text(t.community.share_book),
        onMoreButtonPressed: () => null,
      ),
    );
  }
}
