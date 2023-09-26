import 'package:flutter/material.dart';

import 'custom_book_details_app_bar.dart';
import 'custom_book_image.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          const SizedBox(height: 14),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: const CustomeBookImage(),
          ),
        ],
      ),
    );
  }
}
