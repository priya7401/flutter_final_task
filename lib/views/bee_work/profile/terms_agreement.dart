import 'package:final_task/global_widgets/checkBox_theme.dart';
import 'package:final_task/global_widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class TermsAgreement extends StatefulWidget {
  const TermsAgreement({Key? key}) : super(key: key);

  @override
  State<TermsAgreement> createState() => _TermsAgreementState();
}

class _TermsAgreementState extends State<TermsAgreement> {
  bool checkedVal = true;

  @override
  Widget build(BuildContext context) {

    Size dim = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(dim.width / 16),
            decoration: const BoxDecoration(
                color: Color.fromRGBO(46, 103, 249, 1),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Congratulations,',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Your profile has been sent for verification. It usually takes 24-48 hrs to verify.',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Image.asset('assets/images/mosque.png'),
          ),
          Container(
            height: 1,
            width: dim.width,
            color: Color.fromRGBO(46, 103, 249, 1),
            margin: EdgeInsets.only(bottom: 10),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Please adhere and be mindful to Islamic values when connecting and interacting with other bees. These include, (but are not limited to)',
              style: TextStyle(
                  color: Color.fromRGBO(46, 103, 249, 1), fontSize: 14),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Column(
              children: [
                textBox('Niyyah',
                    '“Actions are by their true intentions” Bukhari.', dim),
                textBox(
                    'Adab',
                    'Good manners, morals, decorum, decency and humaneness.',
                    dim),
                textBox(
                    'Halal',
                    'Communicate and conduct yourself in a permissible halal way.',
                    dim),
                textBox(
                    'Halal',
                    'Communicate and conduct yourself in a permissible halal way.',
                    dim),
                textBox('Niyyah',
                    '“Actions are by their true intentions” Bukhari.', dim),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: dim.width / 70, vertical: dim.height / 40),
                  child: Text(
                    ' We take your safety seriously. No one can screenshot your photos or conversations.',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Transform.scale(
                  scale: 1.22,
                  child: Theme(
                    data: Theme.of(context)
                        .copyWith(checkboxTheme: CustomCheckBoxTheme(context)),
                    child: CheckboxListTile(
                      checkColor: const Color.fromRGBO(13, 72, 77, 1),
                      activeColor: Colors.white,
                      side: MaterialStateBorderSide.resolveWith((states) {
                        if (states.contains(MaterialState.pressed)) {
                          return const BorderSide(
                              color: Color.fromRGBO(13, 72, 77, 1));
                        } else {
                          return const BorderSide(
                              color: Color.fromRGBO(13, 72, 77, 1));
                        }
                      }),
                      value: checkedVal,
                      onChanged: (val) {
                        setState(() {
                          checkedVal = val!;
                        });
                      },
                      title: const Text(
                        'I accept the terms.',
                        style: TextStyle(fontSize: 14),
                      ),
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  ),
                ),
                ProfileElevatedButton(
                    context, 'I Agree', dim, PageController()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget textBox(title, content, dim) {
  return Padding(
    padding: EdgeInsets.only(bottom: dim.height / 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          content,
          style: TextStyle(fontSize: 14),
        ),
      ],
    ),
  );
}
