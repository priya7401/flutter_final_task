//project files imports
import 'package:final_task/global_widgets/custom_elevated_button.dart';

//packages imports
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class AddPhotos extends StatefulWidget {
  final PageController controller;

  const AddPhotos({Key? key, required this.controller}) : super(key: key);

  @override
  State<AddPhotos> createState() => _AddPhotosState();
}

class _AddPhotosState extends State<AddPhotos> {
  bool ToggleStatus = false;
  File? img1, img2, img3, img4;

  @override
  Widget build(BuildContext context) {
    Size dim = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Add photos',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const Text(
          '(Upload minimum of 1 photo)',
          style: TextStyle(color: Colors.grey, height: 1.8),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(top: 5.0),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 7,
                      childAspectRatio: 1.1,
                      children: [
                        ImgContainer(img1, 1, dim),
                        ImgContainer(img2, 2, dim),
                        ImgContainer(img3, 3, dim),
                        ImgContainer(img4, 4, dim),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/ig_icon.png',
                        scale: 17,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      const Text('Link Instagram',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Spacer(),
                      FlutterSwitch(
                        width: 60.0,
                        height: 35.0,
                        activeColor: const Color.fromRGBO(46, 103, 249, 1),
                        activeToggleColor: Colors.white,
                        toggleSize: 20.0,
                        borderRadius: 30.0,
                        padding: 8.0,
                        value: ToggleStatus,
                        onToggle: (val) {
                          setState(() {
                            ToggleStatus = val;
                          });
                        },
                      ),
                    ],
                  ),
                  const Text(
                      'We’ll only show your photos, and not your Profile details or hashtags/descriptions.'),
                  ProfileElevatedButton(context, 'Next', dim, widget.controller)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget ImgContainer(File? img, int imgNum, Size dim) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      height: dim.height / 2,
      width: dim.width / 20,
      child: Center(
        child: img != null
            ? Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: FileImage(img), fit: BoxFit.contain),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Align(
                  alignment: Alignment.topRight,
                  child: CircleAvatar(
                    backgroundColor: Colors.redAccent,
                    radius: 17,
                    child: IconButton(
                      icon: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 20,
                      ),
                      onPressed: () {
                        print('Icon button pressed');
                        setState(() {
                          switch (imgNum) {
                            case 1:
                              img1 = null;
                              break;
                            case 2:
                              img2 = null;
                              break;
                            case 3:
                              img3 = null;
                              break;
                            case 4:
                              img4 = null;
                              break;
                          }
                        });
                      },
                      color: Colors.red,
                    ),
                  ),
                ),
              )
            : IconButton(
                icon: const Icon(
                  Icons.add,
                  size: 45,
                ),
                color: Colors.grey,
                onPressed: () => pickImage(ImageSource.gallery, imgNum)),
      ),
    );
  }

  Future<void> pickImage(source, int n) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) {
        return;
      }
      setState(() {
        switch (n) {
          case 1:
            img1 = File(image.path);
            break;
          case 2:
            img2 = File(image.path);
            break;
          case 3:
            img3 = File(image.path);
            break;
          case 4:
            img4 = File(image.path);
            break;
        }
      });
    } catch (err) {
      print(err);
    }
  }
}
