import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/home_bloc.dart';
import 'widgets/book_card_item.dart';
import 'widgets/carousel_slider_item.dart';

@RoutePage(name: 'BookShelfTabRouter')
class BookShelfTab extends StatelessWidget {
  const BookShelfTab({required this.onItemPressed, super.key});

  final Function(NovelModel novel) onItemPressed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (prev, cur) => prev.novelInShelf != cur.novelInShelf,
      builder: (context, state) {
        final novelInShelf = state.novelInShelf;

        return ListView(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          children: [
            if (novelInShelf.isNotEmpty)
              CarouselSlider.builder(
                options: CarouselOptions(
                  aspectRatio: 2,
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(seconds: 3),
                ),
                itemCount: novelInShelf.length < 3 ? novelInShelf.length : 3,
                itemBuilder: (context, itemIndex, pageViewIndex) {
                  return CarouselSliderItem(
                    novelModel: novelInShelf[itemIndex],
                    onPressed: () => onItemPressed.call(novelInShelf[itemIndex]),
                  );
                },
              ),
            const SizedBox(height: 10),
            if (novelInShelf.length - 3 > 0)
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
                    totalChapter: novel.totalChapters,
                    currentChapter: novel.currentChapter,
                    onPressed: () => onItemPressed.call(novel),
                    scrollPercent: novel.scrollPercent,
                  );
                },
              ),
          ],
        );
      },
    );
  }
}
