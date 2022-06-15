import 'package:final_task/connector/auth_connector.dart';
import './sign_up.dart';
import './login_page.dart';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

//Sign up and Login options are present in the landing page

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController =
      TextEditingController(text: 'sampleuser@gmail.com');

  final TextEditingController _passwordController =
      TextEditingController(text: 'samplepassword');

  final Hero logo = const Hero(
    tag: 'hero',
    child: CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 48.0,
      child: Text('qw12'),
    ),
  );

  int currIdx = 0;

  @override
  Widget build(BuildContext context) {
    Size dim = MediaQuery.of(context).size;

    // return AuthConnector(
    //   builder: (BuildContext c, AuthViewModel model) {
    //     // return Scaffold(
    //     //   body: Stack(
    //     //     children: [
    //     //       Container(
    //     //         height: MediaQuery.of(context).size.height,
    //     //         width: MediaQuery.of(context).size.width,
    //     //         decoration: BoxDecoration(
    //     //           color: AppColors.themeColor.withOpacity(0.65),
    //     //         ),
    //     //         child: ColorFiltered(
    //     //           colorFilter: ColorFilter.mode(
    //     //               AppColors.themeColor.withOpacity(0.6),
    //     //               BlendMode.dstATop),
    //     //           child: Text('qkjwbc'),
    //     //         ),
    //     //       ),
    //     //       Column(
    //     //         mainAxisAlignment: MainAxisAlignment.center,
    //     //         children: [
    //     //           TextButton(
    //     //             onPressed: () {
    //     //               print("===========qwkljdc");
    //     //               model.loginWithPassword('', 'wekdc', 'qkwjbec');
    //     //             },
    //     //             child: Text(
    //     //               'qwjhvchkwvcdq',
    //     //               style: TextStyle(color: Colors.black),
    //     //             ),
    //     //           )
    //     //         ],
    //     //       )
    //     //     ],
    //     //   ),
    //     // );
    //
    //     return Scaffold(
    //       backgroundColor: const Color.fromRGBO(13, 72, 77, 1),
    //       body: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           //Title text
    //           mainPageTitleWidget('bismillāhir-raḥmāni r-raḥīm'),
    //           mainPageTitleWidget(' بِسْمِ اللهِ الرَّحْمٰنِ الرَّحِيْمِ'),
    //           //App icon and app name
    //           Padding(
    //             padding: const EdgeInsets.only(top: 35),
    //             child: Image.asset(
    //               'assets/images/white_logo.png',
    //               scale: 12,
    //             ),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.only(top: 10),
    //             child: RichText(
    //               text: const TextSpan(text: 'muslim', children: [
    //                 TextSpan(
    //                     text: 'bees',
    //                     style: TextStyle(fontWeight: FontWeight.bold))
    //               ]),
    //             ),
    //           ),
    //           //Carousel
    //           CarouselSlider(
    //               items: const [
    //                 Center(
    //                     child: Text(
    //                   'Illustration 1',
    //                 )),
    //                 Center(child: Text('Illustration 2')),
    //                 Center(child: Text('Illustration 3')),
    //               ],
    //               options: CarouselOptions(
    //                   height: 200,
    //                   onPageChanged: (index, _) {
    //                     setState(() {
    //                       currIdx = index;
    //                     });
    //                   })),
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: list.map((element) {
    //               int idx = list.indexOf(element);
    //               return Container(
    //                 padding: const EdgeInsets.only(bottom: 15),
    //                 width: 8.0,
    //                 height: 8.0,
    //                 margin: const EdgeInsets.symmetric(
    //                     vertical: 10.0, horizontal: 2.0),
    //                 decoration: BoxDecoration(
    //                     shape: BoxShape.circle,
    //                     color: currIdx == idx
    //                         ? const Color.fromRGBO(255, 255, 255, 0.9)
    //                         : const Color.fromRGBO(255, 255, 255, 0.4)),
    //               );
    //             }).toList(),
    //           ),
    //           //signup and login buttons
    //           Container(
    //             padding: EdgeInsets.only(
    //                 top: dim.height / 30,
    //                 right: dim.width / 12,
    //                 left: dim.width / 12),
    //             child: OutlinedButton(
    //               onPressed: () => Navigator.push(context,
    //                   MaterialPageRoute(builder: (context) => const SignUp())),
    //               style: outLineButton(),
    //               child: buttonContents('Sign Up'),
    //             ),
    //           ),
    //           Container(
    //             padding: EdgeInsets.symmetric(
    //                 vertical: dim.height / 30, horizontal: dim.width / 12),
    //             child: OutlinedButton(
    //               onPressed: () => Navigator.push(context,
    //                   MaterialPageRoute(builder: (context) => const Login())),
    //               style: outLineButton(),
    //               child: buttonContents('Existing Bee'),
    //             ),
    //           ),
    //         ],
    //       ),
    //     );
    //   },
    // );

    return Scaffold(
      backgroundColor: const Color.fromRGBO(13, 72, 77, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Title text
          mainPageTitleWidget('bismillāhir-raḥmāni r-raḥīm'),
          mainPageTitleWidget(' بِسْمِ اللهِ الرَّحْمٰنِ الرَّحِيْمِ'),
          //App icon and app name
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Image.asset(
              'assets/images/white_logo.png',
              scale: 12,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: RichText(
              text: const TextSpan(text: 'muslim', children: [
                TextSpan(
                    text: 'bees',
                    style: TextStyle(fontWeight: FontWeight.bold))
              ]),
            ),
          ),
          //Carousel
          CarouselSlider(
              items: const [
                Center(
                    child: Text(
                      'Illustration 1',
                    )),
                Center(child: Text('Illustration 2')),
                Center(child: Text('Illustration 3')),
              ],
              options: CarouselOptions(
                  height: 200,
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
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currIdx == idx
                        ? const Color.fromRGBO(255, 255, 255, 0.9)
                        : const Color.fromRGBO(255, 255, 255, 0.4)),
              );
            }).toList(),
          ),
          //signup and login buttons
          Container(
            padding: EdgeInsets.only(
                top: dim.height / 30,
                right: dim.width / 12,
                left: dim.width / 12),
            child: OutlinedButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SignUp())),
              style: outLineButton(),
              child: buttonContents('Sign Up'),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: dim.height / 30, horizontal: dim.width / 12),
            child: OutlinedButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Login())),
              style: outLineButton(),
              child: buttonContents('Existing Bee'),
            ),
          ),
        ],
      ),
    );
  }
}

ButtonStyle outLineButton() {
  return OutlinedButton.styleFrom(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 0.1),
      side: const BorderSide(color: Color.fromRGBO(255, 255, 255, 1)));
}

Widget buttonContents(String text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: EdgeInsets.all(12.0),
        child: Text(
          text,
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(12.0),
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      )
    ],
  );
}

Widget mainPageTitleWidget(String text) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(color: Colors.white, fontSize: 18),
  );
}

List<String> list = ['Illustration 1', 'Illustration 2', 'Illustration 3'];
