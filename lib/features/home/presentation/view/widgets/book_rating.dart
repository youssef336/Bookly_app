import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Color(0xffFFDD4F), size: 13),
        SizedBox(width: 6.3),
        Text('4.8', style: Styles.TextStyle16.copyWith(color: Colors.white)),
        SizedBox(width: 5),

        Opacity(opacity: .7, child: Text('(2455)', style: Styles.TextStyle14)),
      ],
    );
  }
}
