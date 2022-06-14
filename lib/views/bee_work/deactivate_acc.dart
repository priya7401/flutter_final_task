import 'package:final_task/global_widgets/back_button_with_left_title.dart';
import 'package:final_task/global_widgets/custom_elevated_button.dart';
import 'package:final_task/global_widgets/long_textField.dart';
import 'package:final_task/views/bee_work/settings.dart';

import 'package:flutter/material.dart';

class DeactivateAcc extends StatefulWidget {
  const DeactivateAcc({Key? key}) : super(key: key);

  @override
  State<DeactivateAcc> createState() => _DeactivateAccState();
}

List<String> list = List.generate(
    5,
    (index) =>
        index != 4 ? 'Reason ${index + 1}' : 'Reason ${index + 1}(Other)');

class _DeactivateAccState extends State<DeactivateAcc> {
  @override
  Widget build(BuildContext context) {
    Size dim = MediaQuery.of(context).size;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: dim.height / 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //header
                //back button with title
                BackButtonWithTitle('Deactivate Account', context),

                //body
                Padding(
                  padding: EdgeInsets.fromLTRB(dim.width / 17, dim.height / 55,
                      dim.width / 17, dim.height / 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      titleText('Leaving so soon? Let us know why.'),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: list.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                              list[index],
                              style: TextStyle(fontSize: 16),
                            ),
                            contentPadding: EdgeInsets.zero,
                          );
                        },
                        separatorBuilder: (context, index) => Divider(),
                      ),
                      Divider(),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: dim.height / 50),
                        child: Text('Tell us more…'),
                      ),
                      LongTextfield(),
                    ],
                  ),
                ),

                //footer
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: dim.width / 17),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: dim.height / 40),
                        child: Text(
                          'Deactivating doesn\'t mean your account data is deleted from our servers. '
                          'To delete your account permanently, mail us to support@muslimbees.com',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      elevatedButton('Deactivate account', {}, dim, false,
                          Color.fromRGBO(248, 55, 76, 1), context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
