import 'package:final_task/views/bee_work/match_profile/sam_profile.dart';

import 'package:flutter/material.dart';

Widget BackButtonWithTitle(text, context) {
  return Row(
    children: [

      IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: Icon(Icons.arrow_back_ios_outlined,
            color: Colors.black),
        iconSize: 18,
      ),

      Padding(
        padding: EdgeInsets.only(left: 0),
        child: Text(text, style: TextStyle(
            color: blue, fontSize: 20, fontWeight: FontWeight.bold),),
      ),

    ],
  );
}