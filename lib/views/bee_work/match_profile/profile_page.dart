import 'package:final_task/views/bee_work/settings.dart';
import 'package:final_task/views/join_vibee/joinVibee_screen_1.dart';
import 'package:final_task/views/bee_work/Help.dart';

import 'package:flutter/material.dart';

Color blue = Color.fromRGBO(46, 103, 249, 1);
Color grey = Color.fromRGBO(242, 244, 248, 1);
Color bgBlue = Color.fromRGBO(242, 244, 248, 1);

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    Size dim = MediaQuery.of(context).size;

    List<List<dynamic>> settingsList = [
      [Icons.lightbulb, 'Buzz', ''],
      [Icons.ac_unit_outlined, 'VIBee', JoinVibeScreen1()],
      [Icons.settings, 'Settings', Settings()],
      [Icons.help_outline, 'Help', '']
    ];

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //profile_pic
          Padding(
            padding: EdgeInsets.only(top: dim.height / 30),
            child: Center(
              child: CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage('assets/images/Sam.png'),
              ),
            ),
          ),

          //Name
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text(
              'Sam',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
          ),

          //edit profile button
          Padding(
            padding: EdgeInsets.only(bottom: dim.height / 50),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'Edit profile',
                  style: TextStyle(color: blue),
                )),
          ),

          //settings
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35))),
            child: Padding(
              padding: EdgeInsets.only(top: dim.height / 20),
              child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) => ListTile(
                  leading: Icon(settingsList[index][0]),
                  title: Text(settingsList[index][1]),
                  trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios_sharp),
                      onPressed: () => index != 3
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => settingsList[index][2]))
                          : help(context, dim)),
                ),
                separatorBuilder: (context, index) => Divider(thickness: 0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
