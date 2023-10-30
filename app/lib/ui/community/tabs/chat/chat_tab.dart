import 'package:auto_route/annotations.dart';
import 'package:resources/resources.dart';

import '../../../../app.dart';

@RoutePage(name: 'ChatTabRoute')
class ChatTab extends StatefulWidget {
  const ChatTab({super.key});

  @override
  State<ChatTab> createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        automaticallyImplyLeading: true,
        title: Text(t.community.chat),
        onMoreButtonPressed: () => null,
      ),
    );
  }
}
