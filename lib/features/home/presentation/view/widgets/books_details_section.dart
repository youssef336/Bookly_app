import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/features-list-view-item.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.26),
          child: const FeaturesListViewItem(),
        ),
        const SizedBox(height: 23),
        Text(
          "The Jungle Book",
          style: Styles.TextStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),

        Opacity(
          opacity: 0.5,
          child: Text(
            "Rudyard Kipling",
            style: Styles.TextStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 14),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 30),
        const BooksAction(),
      ],
    );
  }
}
