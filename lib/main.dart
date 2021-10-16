import 'dart:io';

import 'package:card_app/screens/landing_page.dart';
import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/material.dart';

void main() {
  HttpOverrides.global = new MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: [
        Locale('en', 'US'),
      ],
      localizationsDelegates: [
        CountryLocalizations.delegate, //use for all countries nae in english
      ],
      theme: ThemeData(
        backgroundColor: Color(0xFFf3f4f6),
        primaryIconTheme: IconThemeData(color: Colors.white),
        primaryColor: Color(0xFFf3f4f6),
      ),
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
