import 'package:flutter/material.dart';

import '../../../../../../../core/utils/styles.dart';
import '../../similar_books_list_view.dart';

class SimillarBookSection extends StatelessWidget {
  const SimillarBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'You can also like',
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 8),
        const SimilarBooksListView(),
      ],
    );
  }
}
