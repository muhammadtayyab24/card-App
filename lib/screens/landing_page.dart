import 'package:card_app/screens/account_detail.dart';
import 'package:card_app/screens/cards.dart';
import 'package:card_app/screens/whom_to_pay.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: AccountDetail());
  }
}
