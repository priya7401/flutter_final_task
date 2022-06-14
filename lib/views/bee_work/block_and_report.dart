import 'package:final_task/views/bee_work/match_profile/sam_profile.dart';

import 'package:flutter/material.dart';

class BlockAndReport extends StatefulWidget {
  const BlockAndReport({Key? key}) : super(key: key);

  @override
  State<BlockAndReport> createState() => _BlockAndReportState();
}

List<String> list = [
  'Inappropriate content',
  'Abusive or threatening',
  'Spam',
  'Stolen photo',
  'Let us know what happened',
  'Not interested'
];

var radioVal = -1;

class _BlockAndReportState extends State<BlockAndReport> {
  @override
  Widget build(BuildContext context) {
    Size dim = MediaQuery.of(context).size;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(dim.width / 20, dim.height / 40,
                      dim.width / 25, dim.height / 20),

                  //title and back button
                  child: Row(
                    children: [
                      //back button
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            onPressed: () => Navigator.of(context).pop(),
                            icon: Icon(Icons.arrow_back_ios,
                                color: Colors.black, size: 20)),
                      ),

                      //title
                      Padding(
                        padding: EdgeInsets.only(left: dim.width / 30),
                        child: Text(
                          '''
                        
Your safety matters to us.
Let us now what happened.''',
                          style: TextStyle(
                              fontSize: 20,
                              color: blue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: dim.width / 10),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'This reporting will stay anonymous.',
                          style: TextStyle(fontSize: 14),
                        ),

                        //radio buttons
                        ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: list.length,
                            itemBuilder: (context, index) => RadioListTile(
                                  value: index,
                                  groupValue: radioVal,
                                  onChanged: (int? val) => setState(() {
                                    radioVal = val!;
                                  }),
                                  title: Text(list[index]),
                                  contentPadding: EdgeInsets.zero,
                                )),

                        //message
                        Theme(
                          data: ThemeData(primarySwatch: Colors.grey),
                          child: Material(
                            elevation: 3,
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            child: TextFormField(
                              maxLines: 5,
                              decoration: InputDecoration(
                                  labelText: 'Type your message..',
                                  border: InputBorder.none),
                            ),
                          ),
                        ),

                        //block and report button
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: dim.width / 12),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromRGBO(248, 55, 76, 1)),
                              child: Padding(
                                padding: EdgeInsets.all(dim.width / 30),
                                child: Text(
                                  'Block & Report',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //cancel button
                        Center(
                          child: TextButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: Text('Cancel',
                                  style: TextStyle(color: Colors.black))),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
