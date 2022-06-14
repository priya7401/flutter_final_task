import 'package:final_task/global_widgets/custom_elevated_button.dart';
import 'package:final_task/views/join_vibee/joinVibee_screen_3.dart';

import 'package:flutter/material.dart';
import 'dart:ui' as ui;

Color green = Color.fromRGBO(13, 72, 77, 1);


class JoinVibeScreen2 extends StatefulWidget {
  JoinVibeScreen2({Key? key}) : super(key: key);

  @override
  State<JoinVibeScreen2> createState() => _JoinVibeScreen2State();
}

class _JoinVibeScreen2State extends State<JoinVibeScreen2> {
  List<List<dynamic>> list = [
    ['1 Month', '£12.49', '', true],
    ['3 Month', '£24.49', 'Works out to £8.16 p/m', false],
    ['6 Month', '£39.49', '*Works out to £6.48 p/m', false]
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
                        Image.asset('assets/images/white_logo.png', scale: 15,),

                        SizedBox(height: dim.height / 60),
                        Text('Choose a plan that suits you!', style: TextStyle(
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
                        child: Text('Join vibee',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24)
                        ),
                      ),

                      ListView.separated(shrinkWrap: true, physics: NeverScrollableScrollPhysics(),
                        itemCount: list.length,
                        itemBuilder: (context, index) =>

                          Material( elevation: 5,
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            color: list[index][3] ? green : Colors.white,
                            child:
                            ListTile(

                              title: Text(list[index][0],
                                style: TextStyle(fontSize: 18,
                                color: list[index][3] ? Colors.white : green,
                                fontWeight: FontWeight.bold
                                ),),
                              leading: Image.asset('assets/images/white_logo.png', scale: 30),

                              trailing:

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    list[index][3] == true ?
                                      Icon(Icons.add_circle_outlined, color: Colors.white,)
                                      : SizedBox(),

                                    Text(
                                      list[index][1],
                                      style: TextStyle(fontSize: 18,
                                      color: list[index][3] ? Colors.white : Colors.black,
                                      fontWeight: FontWeight.bold
                                      ),),

                                    index != 0 ?
                                    Text(
                                      list[index][2],
                                      style: TextStyle(fontSize: 9.5,
                                      color: list[index][3] ? Colors.white : Colors.black
                                      ),)
                                    : SizedBox()
                                  ],
                                ),

                              contentPadding: EdgeInsets.all(dim.width/30),

                              onTap: () => setState(() {
                                //if its not selected, then select it and deselect other tiles
                                if(list[index][3] == false) {
                                  list.forEach((element) { list[index][3] = false; });
                                  list[index][3] = true;
                                }
                                //if its already selected, then simply deselect it
                                else {
                                  list[index][3] = false;
                                }
                              }),

                            ),

                            // decoration: BoxDecoration,
                          ), separatorBuilder: (BuildContext context, int index) => SizedBox( height: dim.height/30, ),
                      ),

                      //button
                      elevatedButton('Proceed', JoinVibeScreen3(), dim, true,
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
