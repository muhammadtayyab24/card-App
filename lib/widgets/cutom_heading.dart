import 'package:card_app/screens/constant.dart';
import 'package:flutter/material.dart';

class TopHeading extends StatelessWidget {
  final String Heading;
  TopHeading({required this.Heading});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          Heading,
          style: Constant.BoldHeading,
        ),
      ),
    );
  }
}
