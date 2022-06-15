//project files imports
import 'package:final_task/global_widgets/custom_elevated_button.dart';

//packages imports
import 'package:flutter/material.dart';

class DoesPoseMatch extends StatefulWidget {
  final PageController controller;

  const DoesPoseMatch({Key? key, required this.controller}) : super(key: key);

  @override
  State<DoesPoseMatch> createState() => _DoesPoseMatchState();
}

class _DoesPoseMatchState extends State<DoesPoseMatch> {
  @override
  Widget build(BuildContext context) {
    Size dim = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Does the pose match?',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        Container(
          margin: EdgeInsets.only(top: 10),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: Padding(
            padding: EdgeInsets.only(
                top: dim.height / 10,
                left: dim.width / 50,
                right: dim.width / 50),
            child: Column(
              children: [
                Wrap(
                  spacing: 10,
                  runSpacing: 8,
                  children: [
                    imgContainer('assets/images/verifyProfile_img.png', dim),
                    imgContainer('assets/images/pose_match.png', dim),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Text(
                    'Remember, your photo must look Similar to be verified',
                    textAlign: TextAlign.center,
                  ),
                ),
                TextButton(
                    onPressed: () => widget.controller.previousPage(
                        duration: Duration(milliseconds: 1000),
                        curve: Curves.easeIn),
                    child: Text('Retake photo')),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: dim.width / 30, vertical: dim.height / 20),
                  child: ProfileElevatedButton(
                      context, 'Submit', dim, widget.controller,
                      onTap: () => widget.controller.nextPage(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeIn)),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Widget imgContainer(String path, dim) {
  return Container(
    width: dim.width / 2.5,
    height: dim.height / 4.5,
    decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(13)),
        image: DecorationImage(fit: BoxFit.fill, image: AssetImage(path))),
  );
}
