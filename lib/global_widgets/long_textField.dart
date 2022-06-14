import 'package:flutter/material.dart';

Widget LongTextfield() {
  return Theme( data: ThemeData(primarySwatch: Colors.grey),
    child: Material( elevation: 4, color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(5)),
      child: TextFormField(
        maxLines: 5,
        decoration: InputDecoration(
            labelText: 'Type your message..',
            labelStyle: TextStyle(fontSize: 12),
            border: InputBorder.none
        ),
      ),
    ),
  );
}