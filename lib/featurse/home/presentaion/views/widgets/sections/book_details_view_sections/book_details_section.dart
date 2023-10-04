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
          child: const CustomeBookImage(
              imageUrl:
                  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fi.pinimg.com%2Foriginals%2Fa1%2Ff8%2F87%2Fa1f88733921c820db477d054fe96afbb.jpg&tbnid=2QNLUQRKNCujMM&vet=12ahUKEwivotP86NuBAxWCrEwKHeDHB6YQMygKegQIARBZ..i&imgrefurl=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F607141593513709309%2F&docid=fiKteH2qEji9yM&w=1800&h=2700&q=book%20cover&ved=2ahUKEwivotP86NuBAxWCrEwKHeDHB6YQMygKegQIARBZ'),
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
