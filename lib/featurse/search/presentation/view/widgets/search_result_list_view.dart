import 'package:flutter/material.dart';

import '../../../../home/presentaion/views/widgets/best_seller_list_view_item.dart';

class SearchResultLisView extends StatelessWidget {
  const SearchResultLisView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: BookListViewItem(),
        );
      },
    );
  }
}
