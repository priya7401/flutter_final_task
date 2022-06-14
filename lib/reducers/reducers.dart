import 'package:final_task/models/models.dart';
import 'package:final_task/reducers/auth/auth_reducer.dart';
import 'package:final_task/reducers/notification/notification_reducer.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  authReducer,
  notificationReducer
]);
