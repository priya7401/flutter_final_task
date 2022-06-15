//project files imports
import 'package:final_task/views/auth/mobile_auth/verify_mobile_user.dart';
import '../../../connector/auth_connector.dart';
import '../../../global_widgets/custom_elevated_button.dart';

//packages imports
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:country_code_picker/country_code_picker.dart';

class SignUpWithMobile extends StatefulWidget {
  const SignUpWithMobile({Key? key}) : super(key: key);

  @override
  State<SignUpWithMobile> createState() => _SignUpWithMobileState();
}

final formKey = GlobalKey<FormState>();

class _SignUpWithMobileState extends State<SignUpWithMobile> {
  final _controller = MaskedTextController(mask: '00000 00000');

  String mobileNo = '', countryCode = '';

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AuthConnector(
        builder: (BuildContext c, AuthViewModel authViewModel) {
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
              customElevatedButton(context, 'Verify', dim, true, onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  print('mobileNo: $mobileNo');
                  print('inside authViewModel');
                  authViewModel.registerWithMobile(_controller.text, '+44');
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Verify(),
                          settings: RouteSettings(arguments: mobileNo)));
                }
              }),
            ],
          ),
        ),
      );
    });
  }

  Widget MobileNumInput(controller) {
    return Form(
      key: formKey,
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: CountryCodePicker(
              onChanged: (CountryCode code) {
                countryCode = code.dialCode!;
              },
              initialSelection: 'UK',
              favorite: ['+44', 'UK'],
              showCountryOnly: false,
              showOnlyCountryWhenClosed: false,
            ),
          ),
          Flexible(
            flex: 2,
            child: TextFormField(
              controller: controller,
              cursorColor: const Color.fromRGBO(13, 72, 77, 1),
              decoration: InputDecoration(
                focusedBorder: const UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromRGBO(13, 72, 77, 1))),
                labelText: 'Enter your mobile number',
                labelStyle:
                    const TextStyle(color: Color.fromRGBO(13, 72, 77, 1)),
              ),
              keyboardType: TextInputType.number,
              onSaved: (val) {
                mobileNo = val!;
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your mobile number';
                } else if (value.length != 11) {
                  return 'Please enter valid phone number';
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }
}
