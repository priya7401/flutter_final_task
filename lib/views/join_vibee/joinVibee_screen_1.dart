import 'package:final_task/global_widgets/custom_elevated_button.dart';
import 'package:final_task/views/join_vibee/joinVibee_screen_2.dart';

import 'package:flutter/material.dart';
import 'dart:ui' as ui;

Color green = Color.fromRGBO(13, 72, 77, 1);


class JoinVibeScreen1 extends StatelessWidget {
  JoinVibeScreen1({Key? key}) : super(key: key);

  List<List<dynamic>> list = [
    [Icons.ac_unit_outlined, 'Unlimited likes'],
    [Icons.lightbulb, 'Recommended / premium profile'],
    [Icons.ac_unit_outlined, 'King/ queen bee badges'],
    [Icons.settings_rounded, 'Your admires'],
    [Icons.help, 'Rematch Expired/ extend time'],
    [Icons.ac_unit_outlined, 'Advanced search filters'],
    [Icons.lightbulb, '4 buses every month'],
    [Icons.undo, 'Undo Swipe'],
  ];

  @override
  Widget build(BuildContext context) {
    Size dim = MediaQuery
        .of(context)
        .size;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [

              //title section
              SizedBox(
                height: dim.height / 3,
                child: CustomPaint(
                  size: Size(dim.width, (dim.width * 0.6).toDouble()),
                  painter: RPSCustomPainter(),
                  child:
                  Padding(padding: EdgeInsets.only(top: dim.height / 30),
                    child:

                    Column(
                      children: [

                        //back button and title
                        Row(
                          children: [

                            IconButton(
                              onPressed: () => Navigator.of(context).pop(),
                              icon: Icon(Icons.arrow_back_ios_outlined,
                                  color: Colors.white),
                              iconSize: 18,
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: dim.width / 4),
                              child: Text('Want More?', style: TextStyle(
                                  color: Colors.white, fontSize: 16),),
                            ),

                          ],
                        ),

                        SizedBox(height: dim.height / 30),
                        Image.asset('assets/images/white_logo.png', scale: 15,),

                        SizedBox(height: dim.height / 60),
                        Text('Get access to premium features', style: TextStyle(
                            color: Colors.white),)
                      ],
                    ),
                  ),
                ),
              ),

              //body
              Padding(padding: EdgeInsets.fromLTRB(
                  dim.width / 15, dim.height / 40, dim.width / 15,
                  dim.height / 30),
                  child:
                  Column(
                    children: [
                      Text('Become a vibee today at just £6.48',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24)),

                      ListView.builder(shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: list.length,
                        itemBuilder: (context, index) =>
                            ListTile(
                              title: Text(list[index][1],
                                style: TextStyle(fontSize: 16),),
                              leading: Icon(
                                list[index][0], size: 16, color: Color.fromRGBO(
                                  221, 190, 24, 1),),
                              contentPadding: EdgeInsets.zero,
                            ),
                      ),

                      //button
                      elevatedButton('Join Now', JoinVibeScreen2(), dim, true,
                          Color.fromRGBO(13, 72, 77, 1), context)
                    ],
                  )

              ),
            ],
          ),
        ),
      ),
    );
  }
}


class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = green;


    Path path0 = Path();
    path0.moveTo(size.width*0.0010526,size.height*0.0035088);
    path0.cubicTo(size.width*0.7486842,size.height*0.0021930,size.width*0.7486842,size.height*0.0021930,size.width*0.9978947,size.height*0.0017544);
    path0.cubicTo(size.width*0.9979132,size.height*0.1988684,size.width*0.9979500,size.height*0.5930965,size.width*0.9979684,size.height*0.7902105);
    path0.cubicTo(size.width*0.8762105,size.height*0.8511754,size.width*0.6569684,size.height*0.9838070,size.width*0.5106842,size.height*0.9602281);
    path0.quadraticBezierTo(size.width*0.3625158,size.height*0.9857544,size.width*0.0004842,size.height*0.7882105);
    path0.quadraticBezierTo(size.width*0.0010526,size.height*0.5916667,size.width*0.0010526,size.height*0.0035088);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

