import 'package:card_app/screens/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustonInput extends StatelessWidget {
  final String hintText;

  CustonInput({
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFffffff),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: TextField(
          decoration: InputDecoration(
              hintText: hintText,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 20.0, horizontal: 10)),
          style: Constant.hintText),
    );
  }
}
