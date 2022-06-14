//project file imports

//packages imports
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class VerifyProfile extends StatefulWidget {
  final PageController controller;

  const VerifyProfile({Key? key, required this.controller}) : super(key: key);

  @override
  State<VerifyProfile> createState() => _VerifyProfileState();
}

class _VerifyProfileState extends State<VerifyProfile> {
  File? img;
  ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    Size dim = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Verify your profile',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25))),
            margin: EdgeInsets.only(top: dim.height / 25),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(dim.width / 30,
                        dim.height / 10, dim.width / 30, dim.height / 25),
                    child: Image.asset('assets/images/verifyProfile_img.png'),
                  ),
                  Text(
                    'Hi, Zeba',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                  Text('Copy this gesture and It’s sunnah to smile.'),
                  Text(''),
                  Padding(
                    padding: const EdgeInsets.only(left: 55, right: 55),
                    child: Text(
                        '(This selfie is only for verification and not shown on your profile)'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: dim.height / 17,
                        left: dim.width / 20,
                        right: dim.width / 20),
                    child: ElevatedButton(
                        onPressed: () async {
                          // get the image first, from camera, if it's not null, then proceed to next page
                          // else, stay in the current page
                          try {
                            final image = await ImagePicker()
                                .pickImage(source: ImageSource.camera);

                            if (image == null) {
                              final LostDataResponse response =
                                  await picker.retrieveLostData();
                              if (response.isEmpty) {
                                return;
                              }
                              if (response.files != null) {
                                for (final XFile file in response.files!) {
                                  setState(() {
                                    img = File(file.path);
                                  });
                                  widget.controller.nextPage(
                                      duration: Duration(milliseconds: 700),
                                      curve: Curves.easeIn);
                                }
                              } else {
                                print(response.exception);
                              }
                            }
                            setState(() {
                              img = File(image!.path);
                            });
                            widget.controller.nextPage(
                                duration: Duration(milliseconds: 700),
                                curve: Curves.easeIn);
                          } catch (err) {
                            print(err);
                          }
                          widget.controller.nextPage(
                              duration: Duration(milliseconds: 700),
                              curve: Curves.easeIn);
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(46, 103, 249, 1)),
                        child: Padding(
                          padding: EdgeInsets.all(dim.width / 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Icon(Icons.camera_alt),
                                  Text(
                                    'Capture',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              )
                            ],
                          ),
                        )),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
