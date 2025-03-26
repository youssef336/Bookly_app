import 'package:bookly_app/constant%20.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.4 / 4,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent,

                image: const DecorationImage(
                  image: AssetImage(AssetsData.testImage),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    "Harry Potter and the Goblet of Fire",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.TextStyle20.copyWith(
                      fontFamily: KGtSectrafine,
                    ),
                  ),
                ),
                const SizedBox(height: 3),
                const Text("J.K. Rowling", style: Styles.TextStyle14),
                const SizedBox(height: 3),
                Row(
                  children: [
                    Text(
                      "19.99 €",
                      style: Styles.TextStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 36),

                    const BookRating(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
