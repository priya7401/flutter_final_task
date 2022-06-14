import 'package:final_task/global_widgets/back_button_with_left_title.dart';
import 'package:final_task/global_widgets/custom_elevated_button.dart';
import 'package:final_task/views/bee_work/deactivate_acc.dart';
import 'package:final_task/views/bee_work/match_profile/sam_profile.dart';

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

bool privacySettings = false;

List<List<dynamic>> settingsList = [
  ['Pop Ups', false],
  ['New Messages', false],
  ['New Admirers', false],
  ['New Matches', false],
  ['Expiring Matches', false],
];

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    Size dim = MediaQuery.of(context).size;

    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: dim.height / 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //header
                //back button and title
                BackButtonWithTitle('Settings', context),

                //body
                Padding(
                  padding: EdgeInsets.fromLTRB(dim.width / 25, dim.height / 55,
                      dim.width / 25, dim.height / 30),
                  child: Column(
                    children: [
                      //privacy settings
                      Container(
                        margin: EdgeInsets.only(top: dim.height / 60),
                        child: Material(
                          elevation: 3,
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: dim.height / 40,
                                horizontal: dim.width / 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                titleText('Privacy'),
                                Row(
                                  children: [
                                    Expanded(
                                      child: ListTile(
                                        title: Text(
                                          'Pause profile',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        subtitle: Text(
                                            'You’ll be invisible to all Bees but existing matches will still see you'),
                                        contentPadding: EdgeInsets.zero,
                                      ),
                                    ),
                                    FlutterSwitch(
                                      width: 60.0,
                                      height: 35.0,
                                      activeColor:
                                          const Color.fromRGBO(46, 103, 249, 1),
                                      activeToggleColor: Colors.white,
                                      toggleSize: 20.0,
                                      borderRadius: 30.0,
                                      padding: 8.0,
                                      value: privacySettings,
                                      onToggle: (val) {
                                        setState(() {
                                          privacySettings = val;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      //notification settings
                      Container(
                        margin: EdgeInsets.only(top: dim.height / 60),
                        // padding: EdgeInsets.,
                        child: Material(
                          elevation: 4,
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(
                                dim.width / 25,
                                dim.height / 55,
                                dim.width / 25,
                                dim.height / 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                titleText('Notifications Settings'),
                                ListView.separated(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: settingsList.length,
                                  itemBuilder: (context, index) {
                                    return Row(
                                      children: [
                                        Expanded(
                                          child: ListTile(
                                            title: Text(
                                              settingsList[index][0],
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        FlutterSwitch(
                                          width: 60.0,
                                          height: 35.0,
                                          activeColor: const Color.fromRGBO(
                                              46, 103, 249, 1),
                                          activeToggleColor: Colors.white,
                                          toggleSize: 20.0,
                                          borderRadius: 30.0,
                                          padding: 8.0,
                                          value: settingsList[index][1],
                                          onToggle: (val) {
                                            setState(() {
                                              settingsList[index][1] = val;
                                            });
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                  separatorBuilder: (context, index) =>
                                      Divider(),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //footer
                SizedBox(
                    width: dim.width / 1.7,
                    child: elevatedButton(
                        'Log Out', {}, dim, false, blue, context)),

                TextButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DeactivateAcc())),
                    child: Text(
                      'Deactivate Account',
                      style: TextStyle(color: Colors.red),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget titleText(text) {
  return Text(
    text,
    style: TextStyle(color: blue, fontWeight: FontWeight.bold, fontSize: 16),
  );
}
