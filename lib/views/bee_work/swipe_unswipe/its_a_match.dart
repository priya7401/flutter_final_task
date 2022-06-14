//project files imports
import 'package:final_task/global_widgets/custom_elevated_button.dart';
import 'package:final_task/global_widgets/custom_dialog.dart';
import 'package:final_task/views/bee_work/chat/new_chat_with_zeba.dart';

//packages imports
import 'package:flutter/material.dart';

String img1 = 'assets/images/ig_images/1.png';
String img2 = 'assets/images/ig_images/5.png';

Color blue = Color.fromRGBO(46, 103, 249, 1);

class ItsAMatch extends StatelessWidget {
  const ItsAMatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size dim = MediaQuery.of(context).size;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: match_buzz_appBar(context),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(dim.width / 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'It’s a Match!',
                  style: TextStyle(
                      fontSize: 32, color: blue, fontWeight: FontWeight.bold),
                ),

                //profile images
                SizedBox(
                  width: dim.width,
                  height: dim.height / 2.5,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(left: 60, child: imgContainer(dim, img1)),
                      Positioned(left: 160, child: imgContainer(dim, img2))
                    ],
                  ),
                ),

                Text(
                  'You control this!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Padding(
                    padding: EdgeInsets.all(dim.width / 24),
                    child: Text('You have 36 hours to make the first move.',
                        style: TextStyle(fontSize: 14))),
                elevatedButton(
                    'Send a message',
                    CustomDialog(
                        Icons.chat_bubble,
                        ChatWithZeba(),
                        'Wondering how to start the conversation?',
                        'It\'s not always easy to know what to say,but in Islam things can start with a Salaam. Or, use one of our conversation starters.',
                        'Proceed',
                        dim,
                        context),
                    dim,
                    false,
                    blue,
                    context),

                TextButton(
                  child: Text(
                    'Keep Browsing',
                    style: TextStyle(color: blue),
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget imgContainer(dim, path) {
  return Container(
    height: dim.height / 4.7,
    width: dim.width / 2.7,
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(path), fit: BoxFit.cover),
        borderRadius: BorderRadius.all(Radius.circular(100))),
  );
}

match_buzz_appBar(context) {
  return AppBar(
    leading: IconButton(
      icon: Icon(
        Icons.close_sharp,
        color: Colors.black,
      ),
      onPressed: () => Navigator.of(context).pop(),
    ),
    backgroundColor: Colors.white,
    elevation: 0,
  );
}
