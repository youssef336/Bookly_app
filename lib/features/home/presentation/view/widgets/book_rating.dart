import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.count,
  });
  final int rating;
  final int count;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Color(0xffFFDD4F), size: 13),
        SizedBox(width: 6.3),
        Text(
          rating.toString(),
          style: Styles.TextStyle16.copyWith(color: Colors.white),
        ),
        SizedBox(width: 5),

        Opacity(
          opacity: .7,
          child: Text(count.toString(), style: Styles.TextStyle14),
        ),
      ],
    );
  }
}
