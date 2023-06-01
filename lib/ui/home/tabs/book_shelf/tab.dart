import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'widgets/book_card_item.dart';

@RoutePage(name: 'BookShelfTabRouter')
class BookShelfTab extends StatelessWidget {
  const BookShelfTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      children: [
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2,
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(seconds: 3),
          ),
          items: [1, 2, 3].map((i) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://static.cdnno.com/poster/linh-canh-hanh-gia/300.jpg?1648001055',
                  ),
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
                    child: Image.network(
                      'https://static.cdnno.com/poster/linh-canh-hanh-gia/300.jpg?1648001055',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Linh Cảnh Hành Giả'),
                        Text('Chương 1138'),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Mê Truyện Chữ'),
                                  Text('100,0%'),
                                ],
                              ),
                            ),
                            Text('1 Giờ '),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
        const SizedBox(height: 10),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 2 / 3,
          ),
          itemCount: 300,
          itemBuilder: (context, index) {
            return const BookCardItem(
              imageUrl:
                  'https://static.8cache.com/cover/o/eJzLyTDW1y2xKE3T9THITAvL1w_zdc1KKc4OcUr11HeEgpzKYn0Xw3T_PJeMROd8A_1yI0NT3QxjIyMAZp4S3w==/nhat-the-ton-su-nhat-the-chi-ton.jpg',
              bookName: 'Nhất Thế Tôn Sư',
              currentChapter: 1442,
              totalChapter: 1442,
            );
          },
        ),
      ],
    );
  }
}
