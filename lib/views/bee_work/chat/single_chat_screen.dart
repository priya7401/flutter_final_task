import 'package:final_task/global_widgets/circle_image.dart';
import 'package:final_task/views/bee_work/chat/new_chats_tab.dart';

import 'package:flutter/material.dart';

List<List<String>> messages = [
  [
    'Heey good morning! Yes i was home quite late but it was fun, thanks :) :)',
    'sender'
  ],
  ['Hehehe that’s great then, let’s speak later :)', 'receiver'],
  ['Sure!!', 'sender']
];

class ChatScreen extends StatefulWidget {
  final imgPath, name;

  const ChatScreen({Key? key, required this.imgPath, this.name})
      : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    Size dim = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: dim.height / 18,
                  width: dim.width / 10,
                  child: circleImg(dim, widget.imgPath)),
              Text(
                widget.name,
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
          Padding(
            padding:
                EdgeInsets.only(top: dim.height / 12, left: dim.width / 24),
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                String messager = messages[index][1];

                return messager == 'sender'
                    ? Align(
                        alignment: Alignment.topLeft,
                        child: Wrap(
                          children: [
                            SizedBox(
                                height: dim.height / 15,
                                width: dim.width / 9,
                                child: circleImg(dim, widget.imgPath)),
                            Container(
                              width: dim.width / 2,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                color: Colors.grey.shade400,
                              ),
                              padding: EdgeInsets.all(dim.width / 16),
                              margin: EdgeInsets.all(dim.width / 24),
                              child: Text(messages[index][0]),
                            ),
                          ],
                        ),
                      )
                    : Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: dim.width / 2,
                          padding: EdgeInsets.all(dim.width / 16),
                          margin: EdgeInsets.all(dim.width / 12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            color: blue,
                          ),
                          child: Text(
                            messages[index][0],
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      );
              },
            ),
          ),

          //send message section
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(top: dim.height / 10),
              height: dim.height / 12,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400)),
              child: Row(
                children: <Widget>[
                  IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt)),
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
                        icon: Icon(Icons.gif),
                        onPressed: () {},
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.send))
                    ],
                  )
                ],
              ),
            ),
          )
        ]));
  }
}
