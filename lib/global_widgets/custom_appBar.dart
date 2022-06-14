import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar(context) {
  return AppBar(elevation: 0,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 18,),
    onPressed: () => Navigator.of(context).pop(),
  ),
    backgroundColor: const Color.fromRGBO(242, 244, 248, 1),
    centerTitle: true,
    title: RichText(text: const TextSpan(text: 'bee',
      style: TextStyle(
          fontSize: 25, fontWeight: FontWeight.bold,
          color: Color.fromRGBO(46, 103, 249, 1)), children: [
        TextSpan(text: 'work',
            style: TextStyle(color: Color.fromRGBO(46, 103, 249, 1), fontWeight: FontWeight.normal))],),),
  );
}
