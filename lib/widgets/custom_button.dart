import 'package:card_app/screens/constant.dart';
import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final String text;
  CustomBtn({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3, horizontal: 3),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: Constant.BtnText,
        ),
        style: ElevatedButton.styleFrom(
          onPrimary: Color(0xFF335ebd),
          primary: Color(0xFFe8f1fa),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
