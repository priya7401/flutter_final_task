import 'package:final_task/connector/auth_connector.dart';
import 'package:final_task/views/home/home_page.dart';
import 'package:final_task/views/loader/app_loader.dart';
import 'package:final_task/views/auth/landing_page.dart';
import 'package:flutter/material.dart';

class InitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AuthConnector(
      builder: (BuildContext c, AuthViewModel model) {
        if (model.isInitializing) {
          return AppLoader();
        }
        return model.currentUser == null ? LandingPage() : HomePage();
      },
    );
  }
}
