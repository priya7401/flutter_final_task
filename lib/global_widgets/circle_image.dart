import 'package:flutter/material.dart';

Widget circleImg(dim, path) {
  return Container(
    height: dim.height/12, width: dim.width/7,
    decoration: BoxDecoration(image: DecorationImage(
        image: AssetImage(path), fit: BoxFit.cover
    ), borderRadius: BorderRadius.all(Radius.circular(100))
    ),
  );
}