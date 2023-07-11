import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/home_bloc.dart';
import 'widgets/book_card_item.dart';
import 'widgets/carousel_slider_item.dart';

@RoutePage(name: 'BookShelfTabRouter')
class BookShelfTab extends StatelessWidget {
  const BookShelfTab({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (prev, cur) => prev.novelInShelf != cur.novelInShelf,
      builder: (context, state) {
        final novelInShelf = state.novelInShelf;

        if (novelInShelf.isEmpty) {
          return const CircularProgressIndicator.adaptive();
        }

        return ListView(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          children: [
            CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 2,
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(seconds: 3),
              ),
              items: state.novelInShelf.skip(3).map((novel) {
                return CarouselSliderItem(novelModel: novel);
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
              itemCount: novelInShelf.length - 3,
              itemBuilder: (context, index) {
                final novel = novelInShelf[index + 3];

                return BookCardItem(
                  imageUrl: novel.imgUrl,
                  bookName: novel.name,
                  currentChapter: novel.totalChapters,
                  totalChapter: novel.currentChapter,
                );
              },
            ),
          ],
        );
      },
    );
  }
}
