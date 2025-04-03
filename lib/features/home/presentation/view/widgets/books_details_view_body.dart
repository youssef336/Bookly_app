import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/books_details_section.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_book_details_app_barr.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                const CustomBookDetailsAppBarr(),
                BooksDetailsSection(bookModel: bookModel),
                const Expanded(child: SizedBox(height: 30)),
                const SimilarBooksSection(),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
