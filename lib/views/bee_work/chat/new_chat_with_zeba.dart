import 'package:final_task/global_widgets/custom_elevated_button.dart';
import '../../../global_widgets/circle_image.dart';

import 'package:flutter/material.dart';

Color blue = Color.fromRGBO(46, 103, 249, 1);

class ChatWithZeba extends StatefulWidget {
  ChatWithZeba({Key? key}) : super(key: key);

  @override
  State<ChatWithZeba> createState() => _ChatWithZebaState();
}

class _ChatWithZebaState extends State<ChatWithZeba> {
  final imgPath = 'assets/images/new_chats/1.png';

  final name = 'Zeba';

  int currPageIndicatorIdx = 0;

  List<int> list = List.generate(5, (index) => index);

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size dim = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: dim.height / 18,
                  width: dim.width / 10,
                  child: circleImg(dim, imgPath)),
              Text(
                name,
                style: TextStyle(color: blue),
              )
            ],
          ),
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_outlined),
              color: Colors.black,
              onPressed: () => Navigator.of(context).pop()),
          actions: [
            IconButton(
              icon: Icon(Icons.account_circle),
              color: Colors.black,
              onPressed: () {},
            )
          ],
        ),
        body: Stack(children: [
          //messages section
          // Padding( padding: EdgeInsets.only(top: dim.height/12, left: dim.width/24),
          //   child: ListView.builder( shrinkWrap: true, physics: NeverScrollableScrollPhysics(),
          //     itemCount: messages.length,
          //     itemBuilder: (context, index){
          //       String messager = messages[index][1];
          //
          //       return messager == 'sender' ?
          //       Align(
          //         alignment: Alignment.topLeft,
          //         child: Wrap(
          //           children: [
          //             SizedBox(height: dim.height/15, width: dim.width/9,
          //                 child: circleImg(dim, imgPath)),
          //             Container(
          //               width: dim.width/2,
          //               decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.all(Radius.circular(12)),
          //                 color: Colors.grey.shade400,
          //               ),
          //               padding: EdgeInsets.all(dim.width/16),
          //               margin: EdgeInsets.all(dim.width/24),
          //
          //               child: Text(messages[index][0]),
          //             ),
          //           ],
          //         ),
          //       )
          //           : Align(
          //         alignment: Alignment.topRight,
          //         child: Container(
          //           width: dim.width/2,
          //           padding: EdgeInsets.all(dim.width/16),
          //           margin: EdgeInsets.all(dim.width/12),
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.all(Radius.circular(12)),
          //             color: blue,
          //           ),
          //           child: Text(messages[index][0], style: TextStyle(color: Colors.white),),
          //         ),
          //       );
          //     },
          //   ),
          // ),

          //send message section

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //titles
              Column(
                children: [
                  Text(
                    'Salaam Zeba!',
                    style: TextStyle(
                        color: blue, fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'You are in control of this connection',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),

              //body
              Column(
                children: [
                  Container(
                    height: dim.width / 4,
                    child: PageView.builder(
                      controller: PageController(
                        viewportFraction: 0.8,
                        initialPage: 0,
                      ),
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 4,
                          margin: EdgeInsets.symmetric(
                              horizontal: dim.width / 40,
                              vertical: dim.height / 80),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                ListTile(
                                  subtitle: Text(
                                      'Assalamu Alaukum Jawad, Titanic is one of my favorite films. '
                                      'What is yours and why?'),
                                  contentPadding:
                                      EdgeInsets.all(dim.width / 30),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(right: dim.width / 30),
                                  child: Text(
                                    'Tap and compose or swipe for more',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      onPageChanged: (val) => setState(() {
                        currPageIndicatorIdx = val;
                      }),
                    ),
                  ),
                  SizedBox(height: dim.height / 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: list.map((element) {
                      int idx = list.indexOf(element);
                      return Container(
                          padding: const EdgeInsets.only(bottom: 15),
                          width: 8.0,
                          height: 8.0,
                          margin: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currPageIndicatorIdx == idx
                                ? blue
                                : Color.fromRGBO(46, 103, 249, 0.3),
                          ));
                    }).toList(),
                  ),
                ],
              ),

              //footer
              Column(
                children: [
                  Text(
                    'You have 36 hours to message Jawad',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '(Always keep it halal just the way your parents taught you)',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  elevatedButton(
                      'Extend for 24hours', {}, dim, false, blue, context)
                ],
              ),
            ],
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(top: dim.height / 10),
              height: dim.height / 12,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400)),
              child: Row(
                children: <Widget>[
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.camera_alt,
                        color: Colors.grey,
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Theme(
                      data: ThemeData(primarySwatch: Colors.grey),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Type your message...",
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.gif,
                          color: Colors.grey,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.send,
                            color: Colors.grey,
                          ))
                    ],
                  )
                ],
              ),
            ),
          )
        ]));
  }
}
