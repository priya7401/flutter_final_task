//project files imports
import 'package:final_task/global_widgets/custom_elevated_button.dart';

//packages imports
import 'package:flutter/material.dart';

class AddSkills extends StatefulWidget {
  final PageController controller;

  const AddSkills({Key? key, required this.controller}) : super(key: key);

  @override
  State<AddSkills> createState() => _AddSkillsState();
}

class _AddSkillsState extends State<AddSkills> {
  final _formKey = GlobalKey<FormState>();
  List<String> skillsList = [
    'Data Science',
    'Network Database',
    'Time Management',
    'Leadership'
  ];
  List<String> selectedItems = ['Network Database'];

  String skill = '';

  @override
  Widget build(BuildContext context) {
    Size dim = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'What are you good at?',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        ),
        const Text(
          '(Select any 3 skills)',
          style: TextStyle(color: Colors.grey, height: 1.8),
        ),
        Expanded(
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
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Form(key: _formKey, child: dropDownBox('Skills')),
                      Expanded(
                        child: Wrap(
                          spacing: 10,
                          children: selectedItems
                              .map((skill) => chipItems(skill))
                              .toList(),
                        ),
                      ),
                      ProfileElevatedButton(
                          context, 'Next', dim, widget.controller, onTap: () {
                        if (_formKey.currentState!.validate()) {
                          // _formKey.currentState!.save();
                          print(selectedItems);
                          widget.controller.nextPage(
                              duration:
                              Duration(milliseconds: 200),
                              curve: Curves.easeIn);
                        }
                      })
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget dropDownBox(String hint) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: DropdownButtonFormField<String>(
        hint: Text(hint),
        icon: const Icon(Icons.arrow_drop_down),
        elevation: 5,
        onChanged: (String? newValue) {
          setState(() {
            selectedItems.add(newValue!);
          });
        },
        items: skillsList.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please choose an option';
          } else if (selectedItems.length != 3) {
            return 'Please choose any 3 skills';
          }
          return null;
        },
        // onSaved: (value) {
        //   skill = value!;
        // },
      ),
    );
  }

  Widget chipItems(String skill) {
    return Chip(
      label: Text(skill),
      onDeleted: () {
        setState(() {
          selectedItems.remove(skill);
        });
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      backgroundColor: const Color.fromRGBO(46, 103, 249, 1),
      labelStyle: const TextStyle(color: Colors.white),
      labelPadding: const EdgeInsets.all(3),
      deleteIcon: const Icon(Icons.close, size: 20),
      deleteIconColor: Colors.white,
    );
  }
}
