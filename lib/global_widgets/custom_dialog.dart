import 'package:final_task/global_widgets/custom_elevated_button.dart';

import 'package:flutter/material.dart';

Color blue = Color.fromRGBO(46, 103, 249, 1);
Color grey = Color.fromRGBO(242, 244, 248, 1);

class CustomDialog extends StatelessWidget {
  final icon, dest;
  String title, subtitle, buttonText;

  CustomDialog(
      {Key? key,
      this.icon,
      required this.title,
      required this.subtitle,
      required this.buttonText,
      this.dest})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size dim = MediaQuery.of(context).size;

    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.fromLTRB(
              dim.width / 15, dim.height / 20, dim.width / 15, 0),
          child: SizedBox(
            height: dim.height / 1.1,
            width: dim.width / 0.3,
            child: Stack(children: [
              Container(
                height: dim.height / 1.3,
                width: dim.width / 0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                padding: EdgeInsets.symmetric(horizontal: dim.width / 20),
                margin: EdgeInsets.all(dim.width / 25),
                child: Column(
                  children: [
                    //undo icon
                    Container(
                        height: dim.height / 3,
                        width: dim.width / 5,
                        decoration:
                            BoxDecoration(shape: BoxShape.circle, color: blue),
                        child: Icon(
                          icon,
                          color: Colors.white,
                          size: 40,
                        )),

                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: blue),
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                          top: dim.height / 40, bottom: dim.height / 35),
                      child: Text(
                        subtitle,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14),
                      ),
                    ),

                    elevatedButton(buttonText, dest, dim, true, blue, context),
                  ],
                ),
              ),

              //close button
              Positioned(
                right: 0,
                top: 0,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, color: blue),
                      child: IconButton(
                        icon: Icon(Icons.close_rounded),
                        color: Colors.white,
                        iconSize: 20,
                        onPressed: () => Navigator.of(context).pop(),
                      )),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

// CustomDialog(icon, dest, title, subtitle, buttonText, dim, context) {
//   return MaterialApp(
//     home: Scaffold(
//       backgroundColor: Colors.transparent,
//       body: Container(
//         margin: EdgeInsets.fromLTRB(
//             dim.width / 15, dim.height / 20, dim.width / 15, 0),
//         color: Colors.transparent,
//         child: SizedBox(
//           height: dim.height / 1.1,
//           width: dim.width / 0.3,
//           child: Stack(children: [
//             Container(
//               height: dim.height / 1.3,
//               width: dim.width / 0.5,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.all(Radius.circular(15)),
//                   color: Colors.white),
//               padding: EdgeInsets.symmetric(horizontal: dim.width / 20),
//               margin: EdgeInsets.all(dim.width / 25),
//               child: Column(
//                 children: [
//                   //undo icon
//                   Container(
//                       height: dim.height / 3,
//                       width: dim.width / 5,
//                       decoration:
//                           BoxDecoration(shape: BoxShape.circle, color: blue),
//                       child: Icon(
//                         icon,
//                         color: Colors.white,
//                         size: 40,
//                       )),
//
//                   Text(
//                     title,
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, fontSize: 24, color: blue),
//                   ),
//
//                   Padding(
//                     padding: EdgeInsets.only(
//                         top: dim.height / 40, bottom: dim.height / 35),
//                     child: Text(
//                       subtitle,
//                       textAlign: TextAlign.center,
//                       style: TextStyle(fontSize: 14),
//                     ),
//                   ),
//
//                   elevatedButton(buttonText, dest, dim, true, blue, context),
//                 ],
//               ),
//             ),
//
//             //close button
//             Positioned(
//               right: 0,
//               top: 0,
//               child: Align(
//                 alignment: Alignment.topRight,
//                 child: Container(
//                     decoration:
//                         BoxDecoration(shape: BoxShape.circle, color: blue),
//                     child: IconButton(
//                       icon: Icon(Icons.close_rounded),
//                       color: Colors.white,
//                       iconSize: 20,
//                       onPressed: () => Navigator.of(context).pop(),
//                     )),
//               ),
//             ),
//           ]),
//         ),
//       ),
//     ),
//   );
// }
