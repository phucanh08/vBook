import 'package:auto_route/auto_route.dart';
import 'package:resources/resources.dart';

import '../../app.dart';
import 'bloc/individual_bloc.dart';

@RoutePage()
class IndividualPage extends StatefulWidget {
  const IndividualPage({Key? key}) : super(key: key);

  @override
  State<IndividualPage> createState() => _IndividualPageState();
}

class _IndividualPageState
    extends BasePageState<IndividualPage, IndividualBloc> {
  @override
  Widget buildPage(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        automaticallyImplyLeading: true,
        title: const Text('Cá nhân'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey, width: 2),
                                  shape: BoxShape.circle,
                                ),
                                child: const FaIcon(
                                  FaCodePoint.user2,
                                  size: 70,
                                  type: IconType.thin,
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Khách',
                                      style: theme.textTheme.titleLarge,
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      'Chưa đăng nhập',
                                      style: theme.textTheme.bodyLarge,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: OutlinedButton(
                                onPressed: () {},
                                child: const Text('Đăng nhập'),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: OutlinedButton(
                                onPressed: () {},
                                child: const Text('Đăng ký'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    color: Colors.grey,
                    child: Text('Ứng dụng', style: theme.textTheme.titleMedium),
                  ),
                  const ListTile(
                    leading: FaIcon(
                      size: 30,
                      FaCodePoint.book,
                      type: IconType.light,
                    ),
                    title: Text('Lưu trữ'),
                  ),
                  const ListTile(
                    leading: FaIcon(
                      size: 30,
                      FaCodePoint.chartSimple,
                      type: IconType.light,
                    ),
                    title: Text('Thống kê'),
                  ),
                  ListTile(
                    onTap: () => navigator.push(const AppRouteInfo.extension()),
                    leading: const FaIcon(
                      size: 30,
                      FaCodePoint.chartPieSimple,
                      type: IconType.light,
                    ),
                    title: const Text('Phần mở rộng'),
                  ),
                  const ListTile(
                    leading: FaIcon(
                      size: 30,
                      FaCodePoint.rotate,
                      type: IconType.light,
                    ),
                    title: Text('Đồng bộ & sao lưu'),
                  ),
                  const ListTile(
                    leading: FaIcon(
                      size: 30,
                      FaCodePoint.gear,
                      type: IconType.light,
                    ),
                    title: Text('Cài đặt'),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    color: Colors.grey,
                    child: Text('Kết nối', style: theme.textTheme.titleMedium),
                  ),
                  const ListTile(
                    leading: FaIcon(
                      size: 30,
                      FaCodePoint.shareNodes,
                      type: IconType.light,
                    ),
                    title: Text('Mời bạn bè sử dụng'),
                  ),
                  const ListTile(
                    leading: FaIcon(
                      size: 30,
                      FaCodePoint.shareNodes,
                      type: IconType.light,
                    ),
                    title: Text('Theo dõi Fanpage'),
                  ),
                  const ListTile(
                    leading: FaIcon(
                      size: 30,
                      FaCodePoint.shareNodes,
                      type: IconType.light,
                    ),
                    title: Text('Tham gia Discord'),
                  ),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Phiên bản: 0.0.1'),
                SizedBox(width: 10),
                FaIcon(
                  FaCodePoint.rotateRight,
                  size: 20,
                  type: IconType.light,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
