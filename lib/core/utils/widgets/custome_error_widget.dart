import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomeErrorWidget extends StatelessWidget {
  const CustomeErrorWidget({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
            textAlign: TextAlign.center,
            errMessage,
            style: Styles.textStyle16));
  }
}
