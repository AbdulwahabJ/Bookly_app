import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_view_item.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            SizedBox(height: 14),
            FeaturedListView(),
            SizedBox(height: 40),
            Text(
              'Best Seller',
              style: Styles.textStyle18,
            ),
            SizedBox(height: 20),
            BestSellerListViewItem(),
          ],
        ),
      ),
    );
  }
}
