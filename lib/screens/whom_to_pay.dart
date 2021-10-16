import 'package:card_app/screens/account_detail.dart';
import 'package:card_app/screens/constant.dart';
import 'package:card_app/widgets/custom_button.dart';
import 'package:card_app/widgets/cutom_heading.dart';
import 'package:flutter/material.dart';

class WhomToPay extends StatefulWidget {
  @override
  State<WhomToPay> createState() => _WhomToPayState();
}

class _WhomToPayState extends State<WhomToPay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf3f4f6),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              left: 5,
              right: 10,
              top: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // action bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Icon(Icons.arrow_back, color: Color(0xFF27282a)),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.search, color: Color(0xFF27282a)),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.person, color: Color(0xFF27282a)),
                          SizedBox(
                            width: 20,
                          ),
                          ElevatedButton.icon(
                            onPressed: () {
                              showModalBottomSheet(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  context: context,
                                  builder: (context) => Sheet());
                            },
                            icon: Icon(Icons.add),
                            label: Text("New"),
                            style: ElevatedButton.styleFrom(
                              onPrimary: Color(0xFFffffff),
                              primary: Color(0xFF095fd8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                // Main Heading
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: TopHeading(
                    Heading: "Whom to Pay",
                  ),
                ),
                // For buttons
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: Row(
                    children: [
                      CustomBtn(text: "R"),
                      CustomBtn(text: "Contacts"),
                      CustomBtn(text: "Accounts"),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    child: Text(
                      "All",
                      style: TextStyle(
                        color: Color(0xFFb6b9c0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                // for making contact listTile
                Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0)),
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text(
                        "Your contact list is empty. Contacts will appear when you add them.",
                        style: TextStyle(
                            color: Color(0xFF83888c),
                            fontWeight: FontWeight.w500),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// For modal bottom sheet display screen
Widget Sheet() => Container(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Color(0xFFd9d7d7),
            ),
            height: 5,
            width: 50,
          ),
        ),
        ListSheet(
          title: "Create Payment Method",
          subtitle: "Send money to anyone with a link",
          icons: Icon(
            Icons.link,
            color: Color(0xFF096df9),
            size: 18,
          ),
        ),
        ListSheet(
          title: "Add a bank recipient",
          subtitle: "Transfer money to nay bank account",
          icons: Icon(
            Icons.account_balance,
            color: Color(0xFF096df9),
            size: 18,
          ),
        ),
        ListSheet(
          title: "Invite a friend",
          subtitle: "Share a link to join Revolut",
          icons: Icon(
            Icons.favorite,
            color: Color(0xFF096df9),
            size: 18,
          ),
        ),
        ListSheet(
          title: "Add a contact",
          subtitle: "Add a contact using phone or emial",
          icons: Icon(
            Icons.person,
            color: Color(0xFF096df9),
            size: 18,
          ),
        ),
      ]),
    );

// for modal bottom sheet listTile
class ListSheet extends StatelessWidget {
  final String title;
  final String subtitle;
  final Icon icons;
  ListSheet({required this.icons, required this.subtitle, required this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Color(0xFFe4f0fe),
          child: icons,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: Color(0xFF096df9),
            fontWeight: FontWeight.w700,
            fontSize: 17,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
              color: Color(0xFFb7b8ba),
              fontWeight: FontWeight.w500,
              fontSize: 15),
        ),
      ),
    );
  }
}
