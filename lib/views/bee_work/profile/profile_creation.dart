//project file imports
import 'package:final_task/global_widgets/custom_appBar.dart';
import 'package:final_task/views/bee_work/profile/add_photos.dart';
import 'package:final_task/views/bee_work/profile/pose_match.dart';
import 'package:final_task/views/bee_work/profile/skills.dart';
import 'package:final_task/views/bee_work/profile/terms_agreement.dart';
import 'package:final_task/views/bee_work/profile/verify_profile.dart';
import './build_you_profile.dart';

//packages imports
import 'package:flutter/material.dart';

class ProfileCreation extends StatefulWidget {
  const ProfileCreation({Key? key}) : super(key: key);

  @override
  State<ProfileCreation> createState() => _ProfileCreationState();
}

class _ProfileCreationState extends State<ProfileCreation> {
  final PageController controller = PageController();
  int currIdx = 0;
  List<int> list = [1, 2, 3, 4, 5];

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),
      backgroundColor: const Color.fromRGBO(242, 244, 248, 1),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //page indicators
            Row(
              children: list.map((element) {
                int idx = list.indexOf(element);
                return Container(
                  width: 10.0,
                  height: 10.0,
                  padding: const EdgeInsets.only(bottom: 15),
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 5.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // color:
                      color: currIdx == idx
                          ? Colors.blueAccent
                          : Colors.grey.shade400),
                );
              }).toList(),
            ),

            Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: controller,
                children: [
                  BuildProfile(controller: controller),
                  AddSkills(controller: controller),
                  AddPhotos(controller: controller),
                  VerifyProfile(controller: controller),
                  DoesPoseMatch(controller: controller),
                  TermsAgreement()
                ],
                onPageChanged: (index) {
                  if (index < 4) {
                    setState(() {
                      currIdx = index;
                    });
                  } else if (index == 5) {
                    setState(() {
                      currIdx = 4;
                    });
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
