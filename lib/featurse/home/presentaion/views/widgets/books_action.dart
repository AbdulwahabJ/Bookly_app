import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../data/models/book_model/book_model.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomButton(
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
            textColor: Colors.black,
            text: '19.99 \$',
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: () async {
              Uri url = Uri.parse(book.volumeInfo.previewLink!);
              if (await canLaunchUrl(url)) {
                await launchUrl(url);
              }
            },
            backgroundColor: const Color(0xffEF8262),
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16)),
            textColor: Colors.white,
            text: 'Free Preview',
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
