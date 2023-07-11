import 'package:auto_route/annotations.dart';
import 'package:resources/resources.dart';

import '../../app.dart';
import 'bloc/browser_bloc.dart';

@RoutePage()
class BrowserPage extends StatefulWidget {
  const BrowserPage({Key? key}) : super(key: key);

  @override
  State<BrowserPage> createState() => _BrowserPageState();
}

class _BrowserPageState extends BasePageState<BrowserPage, BrowserBloc> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          const Expanded(child: Placeholder()),
          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          maxLines: 1,
                          style: textTheme.bodyMedium?.copyWith(height: 1),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: colorScheme.primaryContainer,
                            constraints: const BoxConstraints(maxHeight: 36),
                            contentPadding: EdgeInsets.zero,
                            icon: const FaIcon(
                              FaCodePoint.circleArrowDown,
                              type: IconType.regular,
                            ),
                            prefixIcon: Container(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Image.network(
                                'https://raw.githubusercontent.com/Darkrai9x/vbook-extensions/master/bachngocsach/icon.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              padding: EdgeInsets.zero,
                              icon: Stack(
                                alignment: AlignmentDirectional.center,
                                children: [
                                  const FaIcon(
                                    FaCodePoint.square,
                                    type: IconType.regular,
                                    size: 35,
                                  ),
                                  Text(
                                    '10',
                                    style: textTheme.labelSmall?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const FaIcon(
                                FaCodePoint.ellipsisStrokeVertical,
                                type: IconType.regular,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 48,
                    child: Row(
                      children: [
                        Expanded(
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Chip(

                                avatar: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Image.network(
                                    'https://raw.githubusercontent.com/Darkrai9x/vbook-extensions/master/bachngocsach/icon.png',
                                  ),
                                ),
                                label: const Text('Sách hành tam quốc'),
                                deleteIcon: const FaIcon(
                                  FaCodePoint.xMark,
                                  type: IconType.regular,
                                  size: 20,
                                ),
                                onDeleted: () {},
                              );
                            },
                            separatorBuilder: (context, index) =>
                                const SizedBox(width: 5),
                            itemCount: 1,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const FaIcon(
                            FaCodePoint.plus,
                            type: IconType.regular,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
