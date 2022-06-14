import 'new_chats_tab.dart';

import 'package:flutter/material.dart';

class ExpiredChats extends StatefulWidget {
  const ExpiredChats({Key? key}) : super(key: key);

  @override
  State<ExpiredChats> createState() => _ExpiredChatsState();
}

class _ExpiredChatsState extends State<ExpiredChats> {
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
                    .map((item) => expiredLoadingImg(item[1], dim, true))
                    .toList(),
              ),
            ),
          ),

          //chats
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: chats.length,
            itemBuilder: (context, index) => ListTile(
              leading: expiredLoadingImg(chats[index][1], dim, false),
              title: Text(chats[index][2],
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(chats[index][3]),
            ),
            separatorBuilder: (context, index) => Divider(),
          )
        ],
      ),
    );
  }
}

Widget expiredLoadingImg(path, dim, loading) {
  return Padding(
    padding: loading ? const EdgeInsets.all(8.0) : const EdgeInsets.all(0),
    child: Container(
      height: dim.height / 12,
      width: dim.width / 7,
      decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(1), BlendMode.saturation),
              image: AssetImage(path),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(100))),
    ),
  );
}
