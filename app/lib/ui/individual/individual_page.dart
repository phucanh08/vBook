import 'package:auto_route/auto_route.dart';
import 'package:resources/resources.dart';

import '../../app.dart';
import 'bloc/individual_bloc.dart';

@RoutePage()
class IndividualPage extends StatefulWidget {
  const IndividualPage({super.key});

  @override
  State<IndividualPage> createState() => _IndividualPageState();
}

class _IndividualPageState
    extends BasePageState<IndividualPage, IndividualBloc> {
  @override
  Widget buildPage(BuildContext context) {
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
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: colorScheme.disabledContainer!,
                                    width: 2,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                                child: FaIcon(
                                  FaCodePoint.user2,
                                  size: 50,
                                  type: IconType.thin,
                                  color: colorScheme.onSurface,
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
                      horizontal: 10,
                      vertical: 10,
                    ),
                    color: colorScheme.disabledContainer,
                    child: Text('Ứng dụng', style: theme.textTheme.titleMedium),
                  ),
                  const ListTile(
                    leading: FaIcon(
                      size: 20,
                      FaCodePoint.book,
                      type: IconType.light,
                    ),
                    title: Text('Lưu trữ'),
                  ),
                  const ListTile(
                    leading: FaIcon(
                      size: 20,
                      FaCodePoint.chartSimple,
                      type: IconType.light,
                    ),
                    title: Text('Thống kê'),
                  ),
                  ListTile(
                    onTap: () => navigator.push(const ExtensionRoute()),
                    leading: const FaIcon(
                      size: 20,
                      FaCodePoint.chartPieSimple,
                      type: IconType.light,
                    ),
                    title: const Text('Phần mở rộng'),
                  ),
                  const ListTile(
                    leading: FaIcon(
                      size: 20,
                      FaCodePoint.rotate,
                      type: IconType.light,
                    ),
                    title: Text('Đồng bộ & sao lưu'),
                  ),
                  const ListTile(
                    leading: FaIcon(
                      size: 20,
                      FaCodePoint.gear,
                      type: IconType.light,
                    ),
                    title: Text('Cài đặt'),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    color: colorScheme.disabledContainer,
                    child: Text('Kết nối', style: theme.textTheme.titleMedium),
                  ),
                  const ListTile(
                    leading: FaIcon(
                      size: 20,
                      FaCodePoint.shareNodes,
                      type: IconType.light,
                    ),
                    title: Text('Mời bạn bè sử dụng'),
                  ),
                  ListTile(
                    leading: Assets.icons.facebook.svg(
                      width: 20,
                      height: 20,
                      fit: BoxFit.contain,
                      colorFilter: ColorFilter.mode(
                        colorScheme.onSurface,
                        BlendMode.srcIn,
                      ),
                    ),
                    title: const Text('Theo dõi Fanpage'),
                  ),
                  ListTile(
                    leading: Assets.icons.discord.svg(
                      width: 20,
                      height: 20,
                      fit: BoxFit.contain,
                      colorFilter: ColorFilter.mode(
                        colorScheme.onSurface,
                        BlendMode.srcIn,
                      ),
                    ),
                    title: const Text('Tham gia Discord'),
                  ),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Phiên bản: 0.0.1'),
                SizedBox(width: 10),
                FaIcon(
                  FaCodePoint.rotateRight,
                  size: 14,
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
