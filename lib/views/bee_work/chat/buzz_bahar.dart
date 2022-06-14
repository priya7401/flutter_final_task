import 'package:final_task/global_widgets/long_textField.dart';
import 'package:final_task/views/bee_work/match_profile/sam_profile.dart';
import 'package:final_task/views/bee_work/swipe_unswipe/its_a_match.dart';

import 'package:flutter/material.dart';

String img = 'assets/images/ig_images/9.png';

Color blue = Color.fromRGBO(46, 103, 249, 1);

class BuzzBahar extends StatelessWidget {
  const BuzzBahar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size dim = MediaQuery.of(context).size;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: match_buzz_appBar(context),
        body: Padding(
          padding: EdgeInsets.fromLTRB(
              dim.width / 12, dim.height / 20, dim.width / 12, dim.height / 12),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //image
                Padding(
                  padding: EdgeInsets.only(bottom: dim.height / 20),
                  child: Stack(children: [
                    imgContainer(dim, img),
                    Positioned(
                        top: dim.height / 7,
                        left: dim.width / 4,
                        child: Icon(
                          Icons.lightbulb,
                          size: 55,
                          color: Colors.yellow,
                        )),
                  ]),
                ),

                //title and text
                Text(
                  'Buzz bahar',
                  style: TextStyle(
                      color: blue, fontSize: 25, fontWeight: FontWeight.bold),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: dim.height / 30),
                  child: Text(
                    'If she reads your message, it will automatically become a match but you still have the right to begin the chat within 36 hours to get the conversation going.',
                    textAlign: TextAlign.center,
                  ),
                ),

                //message textField
                LongTextfield(),

                //button
                Padding(
                  padding: EdgeInsets.only(
                      top: dim.height / 17,
                      left: dim.width / 6,
                      right: dim.width / 6),
                  child: ElevatedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileMainPage())),
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(46, 103, 249, 1)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(dim.width / 30),
                            child: const Icon(
                              Icons.lightbulb,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(dim.width / 30),
                            child: Text(
                              'Buzz Away',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
