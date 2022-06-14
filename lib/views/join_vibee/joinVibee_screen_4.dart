import 'package:final_task/global_widgets/custom_elevated_button.dart';
import 'package:final_task/global_widgets/textField_inputs.dart';

import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

Color green = Color.fromRGBO(13, 72, 77, 1);
Color violet = Color.fromRGBO(103, 114, 229, 1);


class JoinVibeScreen4 extends StatefulWidget {
  JoinVibeScreen4({Key? key}) : super(key: key);

  @override
  State<JoinVibeScreen4> createState() => _JoinVibeScreen4State();
}

class _JoinVibeScreen4State extends State<JoinVibeScreen4> {

  final CardNumcontroller = MaskedTextController( mask: ' 0000 0000 0000 0000');

  final ExpiryDateController = MaskedTextController(mask: '00/00');

  final CCVController = MaskedTextController(mask: '000');

  bool saveFuturePayments = false, autoRenewal = true;

  @override
  void dispose() {
    CardNumcontroller.dispose();
    ExpiryDateController.dispose();
    CCVController.dispose();
    super.dispose();
  }

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
                              padding: EdgeInsets.only(left: 0),
                              child: Text('Payment', style: TextStyle(
                                  color: Colors.white, fontSize: 16),),
                            ),

                            ],
                        ),


                        SizedBox(height: dim.height / 30),
                        Image.asset('assets/images/white_logo.png', scale: 15),

                        SizedBox(height: dim.height / 60),
                        Text('Link Payment Account', style: TextStyle(
                            color: Colors.white),)
                      ],
                    ),
                  ),
                ),
              ),

              //body
              Padding(padding: EdgeInsets.fromLTRB(
                  dim.width / 15, dim.height / 55, dim.width / 15,
                  dim.height / 30),
                  child:
                  Column(
                    children: [

                      //title
                      Align( alignment: Alignment.topLeft,
                        child: Text('Enter card details',
                            style: TextStyle( fontSize: 16)),
                      ),

                      //card details
                      Container(
                        margin: EdgeInsets.only(top: dim.height/60),
                        child: Material(elevation: 3, color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          child: Padding( padding: EdgeInsets.all(dim.width/20),
                            child: Column(
                              children: [

                                //card number input
                                CardNumInput(CardNumcontroller),

                                //expiry date and CCV
                                Padding( padding: EdgeInsets.only(top: dim.height/20),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [

                                      SizedBox(width: dim.width/7,
                                          child: expiryDateInput(ExpiryDateController)
                                      ),

                                      SizedBox(width: dim.width/7,
                                          child: CCVInput(CCVController)
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: dim.height/20,),

                      //save for future payments
                      CheckboxListTile(
                          value: saveFuturePayments,
                          onChanged: (val) => setState(() { saveFuturePayments = val!; }),
                        title: Text('Save for future payments', style: TextStyle(fontSize: 14),),
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: violet,
                        checkboxShape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(3))),
                      ),

                      //auto renewal
                      CheckboxListTile(
                        value: autoRenewal,
                        onChanged: (val) => setState(() { autoRenewal = val!; }),
                        title: Text('Auto-renewal', style: TextStyle(fontSize: 14),),
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: violet,
                        checkboxShape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(3))),
                      ),


                      //button
                      elevatedButton('Pay With Stripe', {}, dim, false,
                          violet, context)
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
