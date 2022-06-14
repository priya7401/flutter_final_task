//packages imports
import 'package:final_task/global_widgets/textField_inputs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

//project files imports
import '../../../global_widgets/custom_elevated_button.dart';

class SignUpWithMobile extends StatefulWidget {
  const SignUpWithMobile({Key? key}) : super(key: key);

  @override
  State<SignUpWithMobile> createState() => _SignUpWithMobileState();
}

class _SignUpWithMobileState extends State<SignUpWithMobile> {
  final _controller =
      MaskedTextController(text: '+44', mask: ' 00 00000 00000');

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size dim = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(dim.width / 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //icon
            Image.asset('assets/images/black_logo.png', scale: 30),
            //title
            const Text(
              'Sign Up with Mobile',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            //number input
            MobileNumInput(_controller),
            //description text
            const Text(
              'For your safety, we verify everyone before they can join. Please enter your number.',
              textAlign: TextAlign.center,
            ),
            Column(
              children: const [
                Text(
                  'Don’t worry!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Text('Your number is safe, secured & private.'),
              ],
            ),
            //verify button
            customElevatedButton(context, 'Verify', dim, true),
          ],
        ),
      ),
    );
  }
}
