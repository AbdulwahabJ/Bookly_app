import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomeListViewItem extends StatelessWidget {
  const CustomeListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.amber,
            image: const DecorationImage(
              image: AssetImage(AssetsData.testImage),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
