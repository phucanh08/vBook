import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../app.dart';

@RoutePage()
class IndividualPage extends StatelessWidget {
  const IndividualPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        automaticallyImplyLeading: true,
        title: const Text('Cá nhân'),
        actions: [FilledButton(onPressed: () => null, child: const Text('Đăng xuất'))],
      ),
    );
  }
}
