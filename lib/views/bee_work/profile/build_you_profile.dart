//project files imports
import 'package:final_task/global_widgets/custom_elevated_button.dart';

import 'package:flutter/material.dart';

class BuildProfile extends StatefulWidget {
  final controller;

  const BuildProfile({Key? key, required this.controller}) : super(key: key);

  @override
  State<BuildProfile> createState() => _BuildProfileState();
}

class _BuildProfileState extends State<BuildProfile> {
  final _formKey = GlobalKey<FormState>();
  bool showAnswerBox = false;

  @override
  Widget build(BuildContext context) {
    Size dim = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Build your profile',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Theme(
                  data: ThemeData(
                    primarySwatch: Colors.grey,
                  ),
                  child: Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextFormField(
                            maxLines: null,
                            maxLength: 100,
                            decoration: InputDecoration(
                                labelText:
                                    'A little about me (Max 100 characters)'),
                          ),
                          dropDownBox('Committed Relationship',
                              ['Committed Relationship']),
                          dropDownBox('Profession', ['Co-founder']),
                          dropDownBox('Industry', ['Co-founder']),
                          dropDownBox('Education', ['Graduate']),
                          dropDownBox(
                              'Let\'s talk business(Choose a question)',
                              ['Choose a question']),
                          showAnswerBox
                              ? Column(
                                  children: [
                                    TextFormField(
                                      maxLength: 100,
                                      maxLines: 3,
                                      decoration: InputDecoration(
                                          labelText: 'Type your answer'),
                                    ),
                                    ProfileElevatedButton(context, 'Next',
                                        dim, widget.controller)
                                  ],
                                )
                              : SizedBox(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget dropDownBox(String hint, List<String> list) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: DropdownButtonFormField<String>(
        hint: Text(hint),
        icon: const Icon(Icons.arrow_drop_down),
        elevation: 16,
        onChanged: (String? newValue) {},
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onTap: () {
          setState(() {
            showAnswerBox = !showAnswerBox;
          });
        },
      ),
    );
  }
}
