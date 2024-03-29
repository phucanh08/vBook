import 'package:cached_network_image/cached_network_image.dart';
import 'package:domain/domain.dart';

import '../../../../ui.dart';

class CarouselSliderItem extends StatelessWidget {
  const CarouselSliderItem({
    required this.novelModel,
    required this.onPressed,
    super.key,
  });

  final NovelModel novelModel;
  final Function() onPressed;

  String get timeRead {
    final numOfHourRead = (novelModel.timeRead / 3600).floor();

    return numOfHourRead > 0 ? '$numOfHourRead Giờ' : 'Gần đây';
  }

  String get percentOfNovel => (((novelModel.currentChapter - 1) * 100 + novelModel.scrollPercent) /
          novelModel.totalChapters)
      .toStringAsFixed(1);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: CachedNetworkImageProvider(novelModel.imgUrl),
            fit: BoxFit.cover,
            opacity: 0.1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: CachedNetworkImage(
                imageUrl: novelModel.imgUrl,
                fit: BoxFit.fitHeight,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    novelModel.name,
                    style: theme.textTheme.titleMedium,
                  ),
                  Text(novelModel.currentChapterName),
                  const Spacer(),
                  Text(novelModel.sourceName),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Text('$percentOfNovel%', style: theme.textTheme.titleMedium),
                      ),
                      Text(timeRead),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
