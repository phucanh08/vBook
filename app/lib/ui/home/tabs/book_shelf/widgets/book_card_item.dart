import 'package:flutter/material.dart';

class BookCardItem extends StatelessWidget {
  const BookCardItem({
    required this.imageUrl,
    required this.bookName,
    required this.currentChapter,
    required this.totalChapter,
    super.key,
  });

  final String imageUrl;
  final String bookName;
  final int currentChapter;
  final int totalChapter;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.contain,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              '$totalChapter${'C'} - ${100 * currentChapter / totalChapter}%',
              style: const TextStyle(fontSize: 10, color: Colors.white),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),

              borderRadius: const BorderRadius.vertical(bottom: Radius.circular(5)),
            ),
            padding: const EdgeInsets.all(5),
            child: Text(
              bookName,
              style: const TextStyle(fontSize: 12, color: Colors.white),
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
