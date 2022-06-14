//project files import
import 'package:final_task/global_widgets/custom_elevated_button.dart';
import 'package:final_task/global_widgets/login_buttons_and_app_logo_with_title.dart';

//packages import
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class Verify extends StatefulWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    Size dim = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(dim.width / 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //App icon and title
            AppLogoAndTitle(),
            const Text(
              'Verification Code',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),

            //OTP input and resend OTP
            Column(
              children: [
                OTPTextField(
                  length: 6,
                  width: dim.width,
                  style: TextStyle(fontSize: 17),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.underline,
                  onCompleted: (pin) {
                    print("Completed: $pin");
                  },
                ),
                //resend OTP
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Haven’t received the code?'),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Resend OTP',
                          style: TextStyle(
                              color: Color.fromRGBO(13, 72, 77, 1),
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ],
            ),

            //submit(next) button
            customElevatedButton(context, 'Next', dim, false),
          ],
        ),
      ),
    );
  }
}
