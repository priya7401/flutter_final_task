import 'package:flutter/material.dart';
import '../../global_widgets/login_buttons_and_app_logo_with_title.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size dim = MediaQuery. of(context). size;  //screen dimensions

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //App icon and title
          AppLogoAndTitle(),
          //login buttons
          LoginButtons(dim.width, 'Continue', context)
        ],
      ),
    );
  }
}

