import 'package:final_task/views/auth/mobile_auth/login_with_mobile.dart';
import 'package:flutter/material.dart';

import '../views/auth/mobile_auth/sign_up_with_mobile.dart';

Widget LoginButtons(double screenWidth, String text, context) {
  return Padding(
    padding: EdgeInsets.only(left: screenWidth/8, right: screenWidth/8),
    child: Column(
      children: [
        //with facebook
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: const Color.fromRGBO(59, 89, 152, 1)),
              onPressed: () {}, child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/black_logo.png', scale: 75,),
                Text('$text with facebook'),
              ],
            ),
          )
          ),
        ),
        //with linkedin
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: const Color.fromRGBO(0, 119, 181, 1)),
              onPressed: () {}, child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/black_logo.png', scale: 75,),
                Text('$text with linkedin'),
              ],
            ),
          )
          ),
        ),
        //with mobile
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: const Color.fromRGBO(13, 72, 77, 1)),
            onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => text == 'Sign Up' ? SignUpWithMobile() : LoginWithMobile())),
            child: Padding(
            padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('$text with mobile'),
                ],
              ),
            )
          ),
        ),
      ],
    ),
  );
}

Widget AppLogoAndTitle() {
  return Column(
    children: [
      Image.asset('assets/images/black_logo.png', scale: 20,),
      RichText(text: const TextSpan(text: 'muslim',
          style: TextStyle(color: Color.fromRGBO(13, 72, 77, 1), fontSize: 20), children: [
            TextSpan(text: 'bees', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
          ]), ),
    ],
  );
}