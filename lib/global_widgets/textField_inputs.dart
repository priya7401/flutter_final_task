import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

Color grey = Color.fromRGBO(226, 226, 226, 1);

Widget MobileNumInput(controller, formKey, mobileNo, countryCode) {
  return Form(
    key: formKey,
    child: Row(
      children: [
        Flexible(flex: 1,
          child: CountryCodePicker(
            onChanged: (val) {
              countryCode = val;
            },
            initialSelection: 'UK',
            favorite: ['+44', 'UK'],
            showCountryOnly: false,
            showOnlyCountryWhenClosed: false,
          ),
        ),
        Flexible(flex: 2,
          child: TextFormField(
            controller: controller,
            cursorColor: const Color.fromRGBO(13, 72, 77, 1),
            decoration: InputDecoration(
              focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(13, 72, 77, 1))),
              labelText: 'Enter your mobile number',
              labelStyle: const TextStyle(color: Color.fromRGBO(13, 72, 77, 1)),
            ),
            keyboardType: TextInputType.number,
            onSaved: (val) {
              mobileNo = val;
            },
          ),
        ),
      ],
    ),
  );
}

Widget CardNumInput(controller) {
  return Theme(
    data: ThemeData(primarySwatch: Colors.grey),
    child: TextFormField(
      controller: controller,
      decoration: InputDecoration(
          labelText: 'Card Number XXXX XXXX', icon: Icon(Icons.credit_card)),
      keyboardType: TextInputType.number,
    ),
  );
}

Widget expiryDateInput(controller) {
  return Theme(
      data: ThemeData(primarySwatch: Colors.grey),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(labelText: 'MM/YY'),
        keyboardType: TextInputType.number,
      ));
}

Widget CCVInput(controller) {
  return Theme(
      data: ThemeData(primarySwatch: Colors.grey),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(labelText: 'CVV'),
        keyboardType: TextInputType.number,
        obscureText: true,
      ));
}
