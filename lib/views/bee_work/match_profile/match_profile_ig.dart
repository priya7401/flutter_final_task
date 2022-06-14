//project files imports
import 'package:final_task/views/bee_work/block_and_report.dart';
import 'package:final_task/views/bee_work/chat/buzz_bahar.dart';
import 'package:final_task/views/bee_work/swipe_unswipe/its_a_match.dart';
import 'package:final_task/views/join_vibee/joinVibee_screen_1.dart';
import '../../../global_widgets/custom_dialog.dart';

//packages imports
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

Color blue = Color.fromRGBO(46, 103, 249, 1);
Color grey = Color.fromRGBO(242, 244, 248, 1);

class matchProfileIg extends StatefulWidget {
  Size dim;

  matchProfileIg({Key? key, required this.dim}) : super(key: key);

  @override
  State<matchProfileIg> createState() => _matchProfileIgState();
}

class _matchProfileIgState extends State<matchProfileIg> {
  List<List<dynamic>> detailsList = [
    [Icons.school_outlined, 'Mechanical Engineer'],
    [Icons.work_outline_outlined, 'Co-founder'],
    [Icons.factory_outlined, 'Health & wellness'],
    [Icons.search, 'Committed relationship'],
    [Icons.flag_outlined, 'British']
  ];

  List<String> instaImages = [
    'assets/images/ig_images/1.png',
    'assets/images/ig_images/2.png',
    'assets/images/ig_images/3.png',
    'assets/images/ig_images/4.png',
    'assets/images/ig_images/5.png',
    'assets/images/ig_images/6.png',
    'assets/images/ig_images/7.png',
    'assets/images/ig_images/8.png',
    'assets/images/ig_images/9.png',
  ];

  int currPageIndicatorIdx = 0;

  @override
  Widget build(BuildContext context) {
    Size dim = MediaQuery.of(context).size;

    List<Widget> imagesList =
        List.generate(6, (index) => Image.asset('assets/images/Sam.png'));

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.dim.width / 30),
      child: SingleChildScrollView(
        child: Column(
          children: [
            //image carousel
            Container(
              margin: EdgeInsets.only(top: widget.dim.height / 20),
              child: Stack(
                children: [
                  CarouselSlider(
                    items: imagesList.map((img) => img).toList(),
                    options: CarouselOptions(
                      enableInfiniteScroll: false,
                      viewportFraction: 1,
                      aspectRatio: 1.15,
                      onPageChanged: (index, _) {
                        setState(() {
                          currPageIndicatorIdx = index;
                        });
                      },
                    ),
                  ),
                  Positioned(
                    top: widget.dim.height / 2.4,
                    left: widget.dim.width / 2.6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imagesList.map((element) {
                        int idx = imagesList.indexOf(element);
                        return Container(
                            padding: const EdgeInsets.only(bottom: 15),
                            width: 8.0,
                            height: 8.0,
                            margin: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 2.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currPageIndicatorIdx == idx
                                  ? blue
                                  : Colors.white,
                            ));
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),

            //swipe right, buzz, name
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconContainer(Icon(Icons.lightbulb), Colors.yellow,
                      BuzzBahar(), context, 'notClose'),
                  Text(
                    'Sam',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  iconContainer(Icon(Icons.chevron_right_outlined), blue,
                      ItsAMatch(), context, 'notClose'),
                ],
              ),
            ),

            //About me
            Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(top: widget.dim.height / 25),
                decoration:
                    BoxDecoration(color: grey, borderRadius: containerDecor(7)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'About me',
                        style: TextStyle(
                            fontSize: 17, color: Colors.grey.shade700),
                      ),
                    ),
                    Text(
                      '"I value family. I know it sounds corny, but I’m not ashamed to say it. Family and love comes first".',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                    )
                  ],
                )),

            //details
            Container(
              margin: EdgeInsets.only(top: widget.dim.height / 20),
              decoration:
                  BoxDecoration(color: grey, borderRadius: containerDecor(7)),
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: detailsList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(
                      detailsList[index][0],
                      color: Colors.black,
                    ),
                    title: Text(
                      detailsList[index][1],
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  );
                },
                separatorBuilder: (context, index) => Divider(),
              ),
            ),

            //inspiration
            Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(top: widget.dim.height / 25),
                width: widget.dim.width,
                decoration:
                    BoxDecoration(color: grey, borderRadius: containerDecor(7)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: widget.dim.height / 50),
                      child: Text(
                        'Who inspires you a lot?',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    Text(
                      'Nikola Tesla',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    )
                  ],
                )),

            //skills
            Container(
              padding: EdgeInsets.all(widget.dim.width / 20),
              margin: EdgeInsets.only(top: widget.dim.height / 25),
              decoration: BoxDecoration(
                borderRadius: containerDecor(7),
                color: grey,
              ),
              width: widget.dim.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My skills',
                    style: TextStyle(fontSize: 17),
                  ),
                  Wrap(
                    spacing: 8,
                    runSpacing: 3,
                    children: [
                      skillsChip('Leadership'),
                      skillsChip('Project management'),
                      skillsChip('Networking'),
                    ],
                  ),
                ],
              ),
            ),

            //Insta images
            Container(
              padding: EdgeInsets.only(
                  top: widget.dim.width / 25, bottom: widget.dim.width / 25),
              margin: EdgeInsets.only(top: widget.dim.height / 15),
              decoration: BoxDecoration(
                borderRadius: containerDecor(5),
                color: grey,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(widget.dim.width / 40),
                        child: Image.asset(
                          'assets/images/ig_icon.png',
                          scale: 17,
                        ),
                      ),
                      Text(
                        'Instagram',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Wrap(
                    spacing: 6,
                    children: instaImages
                        .map((path) => Image.asset(path,
                            height: widget.dim.height / 7,
                            width: widget.dim.width / 4))
                        .toList(),
                  )
                ],
              ),
            ),

            //undoSwipe, swipe, buzz icons
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: widget.dim.height / 14,
                  horizontal: widget.dim.width / 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  transparentScreenIconContainer(
                      Icon(Icons.close),
                      Colors.black,
                      CustomDialog(
                          Icons.undo,
                          JoinVibeScreen1(),
                          'Quick swiping gone wrong? No need to stress, we’ve got you.',
                          'Become a vibee and undo swipes to bring them back.',
                          'Join Vibee',
                          dim,
                          context),
                      context,
                      'close'),
                  iconContainer(Icon(Icons.lightbulb), Colors.yellow,
                      BuzzBahar(), context, 'notClose'),
                  iconContainer(Icon(Icons.chevron_right_outlined), blue,
                      ItsAMatch(), context, 'notClose'),
                ],
              ),
            ),

            //block and report
            TextButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BlockAndReport())),
                child: Text(
                  'Block & Report',
                  style: TextStyle(
                      color: Colors.red, decoration: TextDecoration.underline),
                )),
          ],
        ),
      ),
    );
  }
}

Widget iconContainer(Icon icon, color, dest, context, String close) {
  return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      child: IconButton(
          icon: icon,
          color: Colors.white,
          iconSize: 35,
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => dest))));
}

Widget transparentScreenIconContainer(
    Icon icon, color, dest, context, String close) {
  return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      child: IconButton(
          icon: icon,
          color: Colors.white,
          iconSize: 35,
          onPressed: () => Navigator.push(
              context,
              PageRouteBuilder(
                  opaque: false, pageBuilder: (_, __, ___) => dest))));
}

BorderRadius containerDecor(double radius) {
  return BorderRadius.all(Radius.circular(radius));
}

Widget skillsChip(text) {
  return Chip(
    label: Text(text),
    shape: RoundedRectangleBorder(
      borderRadius: containerDecor(3),
    ),
    backgroundColor: Colors.grey.shade300,
    labelPadding: const EdgeInsets.all(1),
    labelStyle: TextStyle(fontSize: 16),
  );
}
