import 'package:flutter/material.dart';

import '../../../../../../../constants.dart';
import '../../../../../../../core/utils/styles.dart';
import '../../book_Rating.dart';
import '../../books_action.dart';
import '../../custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .22),
          child: const CustomeBookImage(),
        ),
        const SizedBox(height: 18),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(fontFamily: kPlayfairDisplay),
        ),
        const SizedBox(height: 8),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 16),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 16),
        const BooksAction(),
      ],
    );
  }
}
