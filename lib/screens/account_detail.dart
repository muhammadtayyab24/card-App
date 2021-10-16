import 'package:card_app/screens/business_tab_bar.dart';
import 'package:card_app/screens/constant.dart';
import 'package:card_app/screens/individual.dart';
import 'package:card_app/widgets/cutom_heading.dart';
import 'package:flutter/material.dart';

class AccountDetail extends StatefulWidget {
  @override
  State<AccountDetail> createState() => _AccountDetailState();
}

class _AccountDetailState extends State<AccountDetail> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFFf3f4f6),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Icon(Icons.arrow_back, color: Color(0xFF27282a)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 5),
                child: Container(
                  child: TopHeading(
                    Heading: "Account Detail",
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 3),
                height: 32,
                decoration: BoxDecoration(
                    color: Color(0xFFe8ebf0),
                    borderRadius: BorderRadius.circular(10)),
                child: TabBar(
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white),
                    tabs: [
                      Tab(
                        text: "Individual",
                      ),
                      Tab(
                        text: "Business",
                      )
                    ]),
              ),
              Expanded(
                child: TabBarView(children: [
                  Individual(),
                  Business(),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
