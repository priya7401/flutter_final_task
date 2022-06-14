import 'package:final_task/views/bee_work/splash_screen.dart';
import 'package:final_task/views/bee_work_love_cards.dart';
import 'package:final_task/views/bee_work/match_profile/sam_profile.dart';
import '../views/auth/mobile_auth/verify_mobile_user.dart';

import 'package:flutter/material.dart';

Widget customElevatedButton(context, String text, Size dim, bool toBeVerified) {
  return ElevatedButton(
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  toBeVerified ? Verify() : BeeWorkAndLove())),
      style: ElevatedButton.styleFrom(primary: Color.fromRGBO(13, 72, 77, 1)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(dim.width / 30),
            child: Text(text),
          ),
          Padding(
            padding: EdgeInsets.all(dim.width / 30),
            child: Icon(Icons.arrow_forward),
          )
        ],
      ));
}

Widget ProfileElevatedButton(
    context, String text, Size dim, PageController pageController) {
  return Padding(
    padding: EdgeInsets.only(top: dim.width / 12),
    child: ElevatedButton(
        onPressed: () => text == 'I Agree'
            ? Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SplashScreen(
                          nxtPage: ProfileMainPage(),
                        )))
            : pageController.nextPage(
                duration: Duration(milliseconds: 500), curve: Curves.easeIn),
        style:
            ElevatedButton.styleFrom(primary: Color.fromRGBO(46, 103, 249, 1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(dim.width / 30),
              child: Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(dim.width / 30),
              child: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            )
          ],
        )),
  );
}

Widget elevatedButton(text, dest, dim, bool arrowForward, color, context) {
  return Padding(
    padding: EdgeInsets.only(top: dim.width / 12),
    child: ElevatedButton(
      onPressed: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => dest)),
      style: ElevatedButton.styleFrom(primary: color),
      child: arrowForward
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(dim.width / 30),
                  child: Text(
                    text,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(dim.width / 30),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          : Padding(
              padding: EdgeInsets.all(dim.width / 30),
              child: Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
    ),
  );
}
