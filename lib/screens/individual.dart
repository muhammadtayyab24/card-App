import 'package:card_app/screens/constant.dart';
import 'package:card_app/widgets/custom_textfeild.dart';
import 'package:country_currency_pickers/country.dart';
import 'package:country_currency_pickers/country_pickers.dart';
import 'package:country_currency_pickers/currency_picker_cupertino.dart';
import 'package:country_currency_pickers/currency_picker_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_currency_pickers/countries.dart';

class Individual extends StatefulWidget {
  @override
  _IndividualState createState() => _IndividualState();
}

var country = CountryCode();

class _IndividualState extends State<Individual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf3f4f6),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          "Country of recipient's bank",
                          style: Constant.InputText,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 15, bottom: 5),
                      child: CountryPickerDropdown(
                        initialValue: 'US',
                        itemBuilder: _buildcountrypciker,
                      ),
                    ),
                    // Container(
                    //   child: CountryCodePicker(
                    //     initialSelection: 'US',
                    //     showCountryOnly: true,
                    //     showOnlyCountryWhenClosed: true,
                    //     favorite: ['+1', 'US'],
                    //     enabled: true,
                    //     showFlagMain: false,
                    //     alignLeft: true,
                    //   ),
                    // ),
                  ],
                ),
              ),
              // currency Code picker
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          "Currency",
                          style: Constant.InputText,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, bottom: 5),
                      child: CurrencyPickerDropdown(
                        initialValue: 'USD',
                        itemBuilder: _buildDefaultMenuItem,
                      ),
                    ),
                  ],
                ),
              ),
              CustonInput(hintText: "ES## #### #### #### #### ####"),
              CustonInput(hintText: "First and middle names"),
              CustonInput(hintText: "Last name(s)"),
              CustonInput(hintText: "E-mail"),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Optional",
                    style: TextStyle(fontSize: 13),
                  )),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue,
                ),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Center(
                  child: Text(
                    "Add beneficiary",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// for currency dropdown.
Widget _buildDefaultMenuItem(Country country) {
  return Container(
    width: 290,
    child: Row(
      children: <Widget>[
        // CountryPickerUtils.getDefaultFlagImage(country),
        SizedBox(
          width: 8.0,
        ),
        Text("${country.currencyName}"),
      ],
    ),
  );
}

// for country dropdown
Widget _buildcountrypciker(Country country) {
  return Container(
    width: 290,
    child: Row(
      children: <Widget>[
        // CountryPickerUtils.getDefaultFlagImage(country),

        SizedBox(
          width: 8.0,
        ),
        Text("${country.name}"),
      ],
    ),
  );
}
