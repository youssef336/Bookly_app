import 'package:bookly_app/features/home/presentation/view/widgets/custom_book_details_app_barr.dart';
import 'package:flutter/material.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(children: const [CustomBookDetailsAppBarr()]),
    );
  }
}
