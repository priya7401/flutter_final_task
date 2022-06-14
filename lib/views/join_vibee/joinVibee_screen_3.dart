import 'package:final_task/global_widgets/custom_elevated_button.dart';
import 'package:final_task/views/join_vibee/joinVibee_screen_3.dart';
import 'package:final_task/views/join_vibee/joinVibee_screen_4.dart';

import 'package:flutter/material.dart';
import 'dart:ui' as ui;

Color green = Color.fromRGBO(13, 72, 77, 1);
Color yellow = Color.fromRGBO(255, 170, 29, 1);

class JoinVibeScreen3 extends StatefulWidget {
  JoinVibeScreen3({Key? key}) : super(key: key);

  @override
  State<JoinVibeScreen3> createState() => _JoinVibeScreen3State();
}

class _JoinVibeScreen3State extends State<JoinVibeScreen3> {
  List<List<dynamic>> list = [
    ['1 Buzz', '£1.49', true],
    ['5 Buzzes', '£5.49', false],
    ['10 Buzzes', '£8.49', false]
  ];

  int radioVal = 0;

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

                    //back button and title
                    Column(
                      children: [

                        Align( alignment: Alignment.topLeft,
                          child: IconButton(
                            onPressed: () => Navigator.of(context).pop(),
                            icon: Icon(Icons.arrow_back_ios_outlined,
                                color: Colors.white),
                            iconSize: 18,
                          ),
                        ),


                        SizedBox(height: dim.height / 30),
                        Icon(Icons.lightbulb, color: yellow, size: 60,),

                        SizedBox(height: dim.height / 60),
                        Text('Choose a package that suits you!', style: TextStyle(
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

                      Align( alignment: Alignment.topLeft,
                        child: Text('More Buzzes?',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24)
                        ),
                      ),

                      ListView.separated(shrinkWrap: true, physics: NeverScrollableScrollPhysics(),
                        itemCount: list.length,
                        itemBuilder: (context, index) =>

                            Material( elevation: 5,
                              borderRadius: BorderRadius.all(Radius.circular(4)),
                              color: list[index][2] ? green : Colors.white,
                              child:
                              ListTile(

                                title: Text(list[index][0],
                                  style: TextStyle(fontSize: 18,
                                      color: list[index][2] ? Colors.white : green,
                                      fontWeight: FontWeight.bold
                                  ),),

                                leading:

                                  Container( padding: EdgeInsets.all(dim.width/60),
                                    decoration: BoxDecoration(shape: BoxShape.circle, color: yellow),
                                    child: Icon(Icons.lightbulb, color: Colors.white, size: 30,)
                                  ),

                                trailing:

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    list[index][2] == true ?
                                    Icon(Icons.add_circle_outlined, color: Colors.white,)
                                        : SizedBox(),

                                    Text(
                                      list[index][1],
                                      style: TextStyle(fontSize: 18,
                                          color: list[index][2] ? Colors.white : Colors.black,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ],
                                ),

                                contentPadding: EdgeInsets.all(dim.width/30),

                                onTap: () =>
                                    setState(() {
                                  //if its not selected, then select it and deselect other tiles
                                  if(list[index][2] == false) {
                                    list.forEach((element) { list[index][2] = false; });
                                    list[index][2] = true;
                                  }
                                  //if its already selected, then simply deselect it
                                  else {
                                    list[index][2] = false;
                                  }
                                }),

                              ),

                              // decoration: BoxDecoration,
                            ), separatorBuilder: (BuildContext context, int index) => SizedBox( height: dim.height/30, ),
                      ),

                      //button
                      elevatedButton('Proceed', JoinVibeScreen4(), dim, true,
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
