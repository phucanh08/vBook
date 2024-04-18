import 'package:resources/resources.dart';

import '../../../app.dart';

class IssuesListView extends StatelessWidget {
  const IssuesListView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InfiniteListView(
      itemBuilder: (BuildContext context, int index) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Divider(height: 0, thickness: 1.sp),
            MaterialButton(
              onPressed: () {},
              elevation: 1.sp,
              padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 8.sp),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  index > 5
                      ? Assets.icons.issueClosed.svg(
                          width: 16.sp,
                          height: 16.sp,
                          fit: BoxFit.contain,
                        )
                      : Assets.icons.issueOpened.svg(
                          width: 16.sp,
                          height: 16.sp,
                          fit: BoxFit.contain,
                        ),
                  SizedBox(width: 8.sp),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Lỗi chức năng ABC.',
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: theme.colorScheme.onSurface,
                            height: 18 / 16,
                          ),
                        ),
                        SizedBox(height: 4.sp),
                        Text(
                          '#1761 opened on Oct 16, 2023 by Brindha',
                          style: theme.textTheme.labelMedium?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                            height: 18 / 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8.sp),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Assets.icons.comment.svg(
                        width: 16.sp,
                        height: 16.sp,
                        fit: BoxFit.contain,
                        colorFilter: ColorFilter.mode(
                          theme.colorScheme.onSurfaceVariant,
                          BlendMode.srcIn,
                        ),
                      ),
                      SizedBox(width: 2.sp),
                      Text(
                        '2',
                        style: theme.textTheme.labelMedium?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                          fontWeight: FontWeight.w600,
                          height: 18 / 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(height: 0, thickness: 1.sp),
          ],
        );
      },
      itemCount: 10,
      nextData: () {},
      hasNext: false,
    );
  }
}
