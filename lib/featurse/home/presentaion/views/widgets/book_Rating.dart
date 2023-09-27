import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 19,
        ),
        const SizedBox(width: 6.3),
        const Text(
          '4.8',
          style: Styles.textStyle18,
        ),
        const SizedBox(width: 5),
        Text(
          '(2345)',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.bold,
            color: const Color(0xff707070),
          ),
        ),
      ],
    );
  }
}
