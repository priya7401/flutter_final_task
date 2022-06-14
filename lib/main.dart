import 'dart:async';

import 'package:final_task/actions/auth/auth_action.dart';
import 'package:final_task/data/api/api_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:final_task/data/app_repository.dart';
import 'package:final_task/data/preference_client.dart';
import 'package:final_task/middleware/middleware.dart';
import 'package:final_task/models/models.dart';
import 'package:final_task/reducers/reducers.dart';
import 'package:final_task/theme.dart';
import 'package:final_task/views/init_page.dart';
import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  final AppRepository repository = AppRepository(
      preferencesClient: PreferencesClient(prefs: prefs),
      config: ApiRoutes.debugConfig);
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
  ]);

  runApp(
    MyApp(
      repository: repository,
    ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({Key? key, required AppRepository repository})
      : store = Store<AppState>(
          reducer,
          middleware: middleware(repository),
          initialState: AppState.initState(),
        ),
        super(key: key);

  final Store<AppState> store;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Store<AppState> store;

  @override
  void initState() {
    super.initState();
    store = widget.store;
    _init();
  }

  void _init() {
    Future<void>.delayed(Duration(seconds: 2), () {
      store.dispatch(CheckForUserInPrefs());
    });
  }

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        navigatorKey: store.state.navigator,
        title: 'MyApp',
        theme: themeData,
        home: InitPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
