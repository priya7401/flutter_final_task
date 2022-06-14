import 'package:final_task/global_widgets/checkBox_theme.dart';

import '../../global_widgets/login_buttons_and_app_logo_with_title.dart';

import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool checkedVal = true;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //App icon and title
          AppLogoAndTitle(),
          //Sign up buttons
          LoginButtons(screenWidth, 'Sign Up', context),
          //T&c
          Theme(
            data: Theme.of(context)
                .copyWith(checkboxTheme: CustomCheckBoxTheme(context)),
            child: CheckboxListTile(
              checkColor: const Color.fromRGBO(13, 72, 77, 1),
              activeColor: Colors.white,
              side: MaterialStateBorderSide.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return const BorderSide(color: Color.fromRGBO(13, 72, 77, 1));
                } else {
                  return const BorderSide(color: Color.fromRGBO(13, 72, 77, 1));
                }
              }),
              value: checkedVal,
              onChanged: (val) {
                setState(() {
                  checkedVal = val!;
                });
              },
              title: const Text('I have agreed to the privacy policy and t&c.'),
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ),
        ],
      ),
    );
  }
}
