//packages imports
import 'package:final_task/global_widgets/textField_inputs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

//project files imports
import '../../../global_widgets/login_buttons_and_app_logo_with_title.dart';
import 'package:final_task/global_widgets/custom_elevated_button.dart';

class LoginWithMobile extends StatefulWidget {
  const LoginWithMobile({Key? key}) : super(key: key);

  @override
  State<LoginWithMobile> createState() => _LoginWithMobileState();
}

class _LoginWithMobileState extends State<LoginWithMobile> {
  final _controller = MaskedTextController(text: ' +44 ', mask: ' 00 00000 00000');

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size dim = MediaQuery. of(context). size;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(dim.width/10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //icon
            AppLogoAndTitle(),
            //number input
            MobileNumInput(_controller),
            //verify button
            customElevatedButton(context, 'Login', dim, true)
          ],
        ),
      ),
    );
  }
}
