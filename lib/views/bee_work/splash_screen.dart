//packages imports
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  final nxtPage;

  const SplashScreen({Key? key, required this.nxtPage}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToProfile();
  }

  navigateToProfile() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => widget.nxtPage));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Image.asset(
          'assets/images/white_logo.png',
          scale: 15,
        ),
      ),
    );
  }
}
