import 'package:flutter/material.dart';

class AppLoader extends StatefulWidget {
  @override
  _AppLoaderState createState() => _AppLoaderState();
}

class _AppLoaderState extends State<AppLoader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Text('qwc'),
          ),
          Positioned(
              left: 0.0,
              right: 0.0,
              bottom: MediaQuery.of(context).size.height * 0.12,
              child: SizedBox(
                height: 70.0,
                child: Text('qkjbdc'),
              ))
        ],
      ),
    );
  }
}
