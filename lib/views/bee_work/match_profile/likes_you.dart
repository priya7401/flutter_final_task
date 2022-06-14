import 'package:final_task/global_widgets/custom_elevated_button.dart';
import 'package:final_task/views/bee_work/match_profile/sam_profile.dart';
import 'package:final_task/views/join_vibee/joinVibee_screen_1.dart';

import 'package:flutter/material.dart';

class LikesYou extends StatefulWidget {
  const LikesYou({Key? key}) : super(key: key);

  @override
  State<LikesYou> createState() => _LikesYouState();
}

class _LikesYouState extends State<LikesYou> {
  @override
  Widget build(BuildContext context) {
    Size dim = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(top: dim.height / 70),
      child: Column(
        children: [
          //likes you card
          Card(
            elevation: 5,
            margin: EdgeInsets.only(left: dim.width / 20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5))),
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  dim.width / 23, dim.height / 40, 0, dim.height / 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //title texts
                  Padding(
                    padding: EdgeInsets.only(bottom: dim.width / 30),
                    child: Text(
                      'Likes you',
                      style: TextStyle(
                          color: blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: dim.width / 15),
                    child: Text('People that already liked you'),
                  ),

                  //image and name
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ImageColumn('no_blur', 'no_blur_text', dim),
                        ImageColumn('blur_1', 'blur_text_1', dim),
                        ImageColumn('blur_2', 'blur_text_2', dim),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          //vibe membership button
          Padding(
            padding: EdgeInsets.only(top: dim.height / 30),
            child: Text('Vibee members can view all their likes at once'),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(
                  dim.width / 12, 0, dim.width / 12, dim.height / 50),
              child: elevatedButton(
                  'Join VIBee', JoinVibeScreen1(), dim, true, blue, context))
        ],
      ),
    );
  }
}

BorderRadius containerDecor(double radius) {
  return BorderRadius.all(Radius.circular(radius));
}

Widget ImageColumn(imgPath, textPath, dim) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.only(right: 8.0, bottom: dim.width / 30),
        child: Image.asset('assets/images/likes_images/$imgPath.png'),
      ),
      Image.asset(
        'assets/images/likes_images/$textPath.png',
        height: dim.height / 20,
      )
    ],
  );
}
