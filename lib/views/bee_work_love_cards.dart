//packages imports
import 'package:final_task/views/bee_work/profile/profile_creation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

//project files imports
import 'package:final_task/views/bee_work/splash_screen.dart';

class BeeWorkAndLove extends StatefulWidget {
  const BeeWorkAndLove({Key? key}) : super(key: key);

  @override
  State<BeeWorkAndLove> createState() => _BeeWorkAndLoveState();
}

class _BeeWorkAndLoveState extends State<BeeWorkAndLove> {
  int currIdx = 0;
  List<int> list = [1, 2];

  @override
  Widget build(BuildContext context) {
    Size dim = MediaQuery.of(context).size;
    double screenHt = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: currIdx == 1
          ? Color.fromRGBO(251, 245, 245, 1)
          : Color.fromRGBO(242, 244, 248, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider(
              items: [
                beeWorkAndLove(screenHt, true, context),
                beeWorkAndLove(screenHt, false, context)
              ],
              options: CarouselOptions(
                  viewportFraction: 0.75,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  height: dim.width,
                  onPageChanged: (index, _) {
                    setState(() {
                      currIdx = index;
                    });
                  })),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: list.map((element) {
              int idx = list.indexOf(element);
              return Container(
                padding: const EdgeInsets.only(bottom: 15),
                width: 8.0,
                height: 8.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currIdx == idx ? Colors.black : Colors.grey),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

//if isWork = true, its beeWork, otherwise its beeLove
Widget beeWorkAndLove(screenHt, bool isWork, context) {
  return Center(
    child: Stack(
      alignment: AlignmentDirectional.center,
      children: [
        //card
        Positioned(
          bottom: 60,
          child: Material(
            color: isWork
                ? Color.fromRGBO(242, 244, 248, 1)
                : Color.fromRGBO(251, 245, 245, 1),
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            elevation: 30,
            child: CustomPaint(
              size: Size(286, (286 * 1).toDouble()),
              //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainter(),
            ),
          ),
        ),
        //card contents
        Positioned(
          top: 170,
          child: Column(
            children: [
              RichText(
                  text: TextSpan(
                      text: 'bee',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: isWork ? Colors.blueAccent : Colors.redAccent,
                          fontSize: 35),
                      children: [
                    TextSpan(
                        text: isWork ? 'work' : 'love',
                        style: TextStyle(fontWeight: FontWeight.normal))
                  ])),
              Text(
                'Find dates with nearby people.',
                style: TextStyle(
                    color: isWork ? Colors.blueAccent : Colors.redAccent),
              ),
              Padding(
                padding: EdgeInsets.only(top: screenHt / 10),
                child: OutlinedButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SplashScreen(
                                nxtPage: ProfileCreation(),
                              ))),
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: BorderSide(
                          color:
                              isWork ? Colors.blueAccent : Colors.redAccent)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          'Proceed to ${isWork ? 'beework' : 'beelove'}',
                          style: TextStyle(
                              fontSize: 15,
                              color: isWork
                                  ? Colors.blueAccent
                                  : Colors.redAccent),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Icon(
                          Icons.arrow_forward,
                          color: isWork ? Colors.blueAccent : Colors.redAccent,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        //top circle
        Positioned(
          top: 25,
          child: Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 10.0,
                ),
              ],
              // border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.circular(70),
              color: Colors.white,
            ),
            child: Image.asset(
              'assets/images/black_logo.png',
              scale: 40,
            ),
          ),
        ),
      ],
    ),
  );
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()..color = const Color.fromRGBO(255, 255, 255, 1);

    Path path0 = Path();
    path0.moveTo(size.width * 0.0033333, size.height * 0.8333333);
    path0.quadraticBezierTo(size.width * -0.0071000, size.height * 1.0078000,
        size.width * 0.1600000, size.height * 0.9900000);
    path0.quadraticBezierTo(size.width * 0.6625000, size.height * 0.9925000,
        size.width * 0.8300000, size.height * 0.9933333);
    path0.quadraticBezierTo(size.width * 0.9928000, size.height * 1.0000667,
        size.width * 0.9933333, size.height * 0.8366667);
    path0.quadraticBezierTo(size.width * 0.9933333, size.height * 0.3366667,
        size.width * 0.9933333, size.height * 0.1700000);
    path0.quadraticBezierTo(size.width * 0.9992667, size.height * 0.0023667,
        size.width * 0.7543000, size.height * 0.0078667);
    path0.quadraticBezierTo(size.width * 0.7548667, size.height * 0.3120000,
        size.width * 0.4966667, size.height * 0.3266667);
    path0.quadraticBezierTo(size.width * 0.2335333, size.height * 0.3140000,
        size.width * 0.2444000, size.height * 0.0075333);
    path0.quadraticBezierTo(size.width * 0.0005667, size.height * 0.0028333,
        size.width * 0.0066667, size.height * 0.1633333);
    path0.cubicTo(
        size.width * 0.0058333,
        size.height * 0.3308333,
        size.width * 0.0058333,
        size.height * 0.3308333,
        size.width * 0.0033333,
        size.height * 0.8333333);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
