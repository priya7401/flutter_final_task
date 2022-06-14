import 'package:flutter/material.dart';

Color grey = Color.fromRGBO(226, 226, 226, 1);

Widget MobileNumInput(controller) {
  return Form(
    child: TextFormField(
      controller: controller,
      cursorColor: const Color.fromRGBO(13, 72, 77, 1),
      decoration: InputDecoration(
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(13, 72, 77, 1))),
        labelText: 'Enter your mobile number',
        labelStyle: const TextStyle(color: Color.fromRGBO(13, 72, 77, 1)),
        prefix: Align(
            widthFactor: 1,
            heightFactor: 0.7,
            child: Image.asset('assets/images/black_logo.png', scale: 100)),
      ),
      keyboardType: TextInputType.number,
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
