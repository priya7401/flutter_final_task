import 'package:final_task/views/bee_work/chat/progress_indicator.dart';
import 'package:final_task/views/bee_work/chat/single_chat_screen.dart';

import 'package:flutter/material.dart';

Color blue = Color.fromRGBO(46, 103, 249, 1);
Color grey = Color.fromRGBO(242, 244, 248, 1);
Color bgBlue = Color.fromRGBO(242, 244, 248, 1);

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

//boolean to indicate if the chat has been opened yet or not
List<List<dynamic>> chats = [
  [
    false,
    'assets/images/new_chats/1.png',
    'Hanna',
    'Hey! how was the concert...'
  ],
  [
    false,
    'assets/images/new_chats/2.png',
    'Jawad',
    'You have 24 hours to make ...'
  ],
  [true, 'assets/images/new_chats/3.png', 'Maya', 'You have been buzzed'],
  [
    true,
    'assets/images/new_chats/4.png',
    'Asif',
    'Yeah I’ll let you know when I’m ...'
  ],
  [true, 'assets/images/new_chats/5.png', 'Riz', 'Yeah I’ll let you know'],
  [true, 'assets/images/new_chats/1.png', 'Jawad', '...'],
  [true, 'assets/images/new_chats/5.png', 'Riz', 'Yeah I’ll let you know'],
  [
    true,
    'assets/images/new_chats/4.png',
    'Asif',
    'Yeah I’ll let you know when I’m ...'
  ],
];

class NewChats extends StatefulWidget {
  const NewChats({Key? key}) : super(key: key);

  @override
  State<NewChats> createState() => _NewChatsState();
}

class _NewChatsState extends State<NewChats> {
  @override
  Widget build(BuildContext context) {
    Size dim = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          //status
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.all(dim.width / 20),
              child: Row(
                children: chats
                    .map((chat) => Padding(
                          padding: EdgeInsets.only(right: dim.width / 25),
                          child: loadingImage(chat[1], dim),
                        ))
                    .toList(),
              ),
            ),
          ),

          //chats
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: chats.length,
            itemBuilder: (context, index) => chats[index][0]
                ? ListTile(
                    leading: loadingImage(chats[index][1], dim),
                    title: Text(chats[index][2],
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(chats[index][3]),
                  )
                : ListTile(
                    leading: loadingImage(chats[index][1], dim),
                    title: Text(chats[index][2],
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(chats[index][3],
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    tileColor: Color.fromRGBO(248, 248, 248, 1),
                    trailing: Container(
                      height: 8,
                      width: 8,
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, color: blue),
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChatScreen(
                                imgPath: chats[index][1],
                                name: chats[index][2])))),
            separatorBuilder: (BuildContext context, int index) => Divider(),
          ),
        ],
      ),
    );
  }
}

Widget loadingImage(path, dim) {
  return percentIndicator(
      centerIcon: CircleAvatar(
        backgroundImage: AssetImage(path),
        radius: 28,
      ),
      percent: 0.75);
}
