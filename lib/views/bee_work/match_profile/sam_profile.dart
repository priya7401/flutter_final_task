//project files imports
import 'package:final_task/views/bee_work/chat/new_chats_tab.dart';
import 'package:final_task/views/bee_work/match_profile/profile_page.dart';
import 'package:final_task/views/bee_work/match_profile/likes_you.dart';
import 'package:final_task/views/bee_work/match_profile/match_profile_ig.dart';
import 'package:final_task/views/bee_work/search_filters.dart';
import '../chat/expired_chats_tab.dart';

//packages imports
import 'package:flutter/material.dart';

Color blue = Color.fromRGBO(46, 103, 249, 1);
Color grey = Color.fromRGBO(242, 244, 248, 1);
Color bgBlue = Color.fromRGBO(242, 244, 248, 1);

class ProfileMainPage extends StatefulWidget {
  const ProfileMainPage({Key? key}) : super(key: key);

  @override
  State<ProfileMainPage> createState() => _ProfileMainPageState();
}

class _ProfileMainPageState extends State<ProfileMainPage> {
  int currBottomNavbarIdx = 1;

  @override
  Widget build(BuildContext context) {
    Size dim = MediaQuery.of(context).size;

    print(currBottomNavbarIdx);

    List<Widget> match_profile_ig_actions = [
      Padding(
          padding: EdgeInsets.only(right: 15),
          child: IconButton(
              icon: Icon(Icons.filter_alt),
              color: Colors.grey,
              onPressed: () => SearchFilters(context, dim))),
    ];

    List<Widget> chats_actions = [
      Padding(
        padding: EdgeInsets.only(right: 15),
        child: IconButton(
            icon: Icon(Icons.search), color: Colors.black, onPressed: () {}),
      )
    ];

    List<Widget> WidgetOptions = [
      EditProfile(),
      matchProfileIg(dim: dim),
      LikesYou(),
      NewChats()
    ];

    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: currBottomNavbarIdx == 0 ? bgBlue : Colors.white,
            leading: currBottomNavbarIdx == 1
                ? Icon(Icons.undo, color: Colors.grey)
                : currBottomNavbarIdx == 3
                    ? IconButton(
                        icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                        padding: EdgeInsets.all(15),
                        onPressed: () => Navigator.of(context).pop())
                    : null,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                    text: TextSpan(
                        text: 'bee',
                        style: TextStyle(
                            color: blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                        children: const [
                      TextSpan(
                          text: 'work',
                          style: TextStyle(fontWeight: FontWeight.normal))
                    ])),
                Icon(Icons.compare_arrows, color: blue)
              ],
            ),
            actions: currBottomNavbarIdx == 1
                ? match_profile_ig_actions
                : currBottomNavbarIdx == 3
                    ? chats_actions
                    : null,
            bottom: currBottomNavbarIdx == 3
                ? TabBar(
                    tabs: const [
                      Tab(
                        text: 'New Chats',
                      ),
                      Tab(
                        text: 'Expired',
                      )
                    ],
                    labelColor: blue,
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    unselectedLabelColor: Colors.black,
                    indicatorColor: blue,
                    indicatorWeight: 3,
                  )
                : null,
          ),
          backgroundColor: currBottomNavbarIdx == 0 ? bgBlue : Colors.white,
          body: currBottomNavbarIdx == 3
              ? TabBarView(children: [NewChats(), ExpiredChats()])
              : WidgetOptions.elementAt(currBottomNavbarIdx),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline_sharp), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.monitor), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.monitor_heart_outlined), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble_outline), label: ''),
            ],
            elevation: 10,
            selectedItemColor: blue,
            unselectedItemColor: Colors.grey,
            currentIndex: currBottomNavbarIdx,
            showSelectedLabels: false,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              setState(() {
                currBottomNavbarIdx = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
