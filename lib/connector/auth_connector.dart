import 'package:final_task/actions/actions.dart';
import 'package:final_task/models/models.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter/material.dart' hide Builder;
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

part 'auth_connector.g.dart';

typedef LoginWithPasswordAction = void Function(
    String email, String mobile, String password);
typedef RegisterWithMobileAction = void Function(
    String? mobileNum, String? iSDCode);
typedef LogOutAction = void Function();

abstract class AuthViewModel
    implements Built<AuthViewModel, AuthViewModelBuilder> {
  factory AuthViewModel(
      [AuthViewModelBuilder Function(AuthViewModelBuilder builder)
          updates]) = _$AuthViewModel;

  AuthViewModel._();

  factory AuthViewModel.fromStore(Store<AppState> store) {
    return AuthViewModel((AuthViewModelBuilder b) {
      return b
        ..isInitializing = store.state.isInitializing
        ..currentUser = store.state.currentUser?.toBuilder()
        ..loginWithPassword = (String email, String mobile, String password) {
          store.dispatch(LoginWithPassword(
              email: email, mobile: mobile, password: password));
        }
        ..registerWithMobile = (String? mobileNum, String? iSDCode) {
          store.dispatch(RegisterWithMobile(
              mobileNum: mobileNum, iSDCode: iSDCode));
        }
        ..logOut = () {
          store.dispatch(LogOutUser());
        };
    });
  }

  LoginWithPasswordAction get loginWithPassword;

  RegisterWithMobileAction get registerWithMobile;

  LogOutAction get logOut;

  AppUser? get currentUser;

  bool get isInitializing;
}

class AuthConnector extends StatelessWidget {
  const AuthConnector({required this.builder});

  final ViewModelBuilder<AuthViewModel> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AuthViewModel>(
      builder: builder,
      converter: (Store<AppState> store) => AuthViewModel.fromStore(store),
    );
  }
}
