import 'package:bookly_app/features/home/presentation/view/widgets/custom_book_details_app_barr.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/features-list-view-item.dart';
import 'package:flutter/material.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          const CustomBookDetailsAppBarr(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.24),
            child: const FeaturesListViewItem(),
          ),
        ],
      ),
    );
  }
}
