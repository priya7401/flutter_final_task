// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_connector.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthViewModel extends AuthViewModel {
  @override
  final LoginWithPasswordAction loginWithPassword;
  @override
  final RegisterWithMobileAction registerWithMobile;
  @override
  final LogOutAction logOut;
  @override
  final AppUser? currentUser;
  @override
  final bool isInitializing;

  factory _$AuthViewModel([void Function(AuthViewModelBuilder)? updates]) =>
      (new AuthViewModelBuilder()..update(updates))._build();

  _$AuthViewModel._(
      {required this.loginWithPassword,
      required this.registerWithMobile,
      required this.logOut,
      this.currentUser,
      required this.isInitializing})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        loginWithPassword, r'AuthViewModel', 'loginWithPassword');
    BuiltValueNullFieldError.checkNotNull(
        registerWithMobile, r'AuthViewModel', 'registerWithMobile');
    BuiltValueNullFieldError.checkNotNull(logOut, r'AuthViewModel', 'logOut');
    BuiltValueNullFieldError.checkNotNull(
        isInitializing, r'AuthViewModel', 'isInitializing');
  }

  @override
  AuthViewModel rebuild(void Function(AuthViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthViewModelBuilder toBuilder() => new AuthViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is AuthViewModel &&
        loginWithPassword == _$dynamicOther.loginWithPassword &&
        registerWithMobile == _$dynamicOther.registerWithMobile &&
        logOut == _$dynamicOther.logOut &&
        currentUser == other.currentUser &&
        isInitializing == other.isInitializing;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc(0, loginWithPassword.hashCode),
                    registerWithMobile.hashCode),
                logOut.hashCode),
            currentUser.hashCode),
        isInitializing.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthViewModel')
          ..add('loginWithPassword', loginWithPassword)
          ..add('registerWithMobile', registerWithMobile)
          ..add('logOut', logOut)
          ..add('currentUser', currentUser)
          ..add('isInitializing', isInitializing))
        .toString();
  }
}

class AuthViewModelBuilder
    implements Builder<AuthViewModel, AuthViewModelBuilder> {
  _$AuthViewModel? _$v;

  LoginWithPasswordAction? _loginWithPassword;
  LoginWithPasswordAction? get loginWithPassword => _$this._loginWithPassword;
  set loginWithPassword(LoginWithPasswordAction? loginWithPassword) =>
      _$this._loginWithPassword = loginWithPassword;

  RegisterWithMobileAction? _registerWithMobile;
  RegisterWithMobileAction? get registerWithMobile =>
      _$this._registerWithMobile;
  set registerWithMobile(RegisterWithMobileAction? registerWithMobile) =>
      _$this._registerWithMobile = registerWithMobile;

  LogOutAction? _logOut;
  LogOutAction? get logOut => _$this._logOut;
  set logOut(LogOutAction? logOut) => _$this._logOut = logOut;

  AppUserBuilder? _currentUser;
  AppUserBuilder get currentUser =>
      _$this._currentUser ??= new AppUserBuilder();
  set currentUser(AppUserBuilder? currentUser) =>
      _$this._currentUser = currentUser;

  bool? _isInitializing;
  bool? get isInitializing => _$this._isInitializing;
  set isInitializing(bool? isInitializing) =>
      _$this._isInitializing = isInitializing;

  AuthViewModelBuilder();

  AuthViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _loginWithPassword = $v.loginWithPassword;
      _registerWithMobile = $v.registerWithMobile;
      _logOut = $v.logOut;
      _currentUser = $v.currentUser?.toBuilder();
      _isInitializing = $v.isInitializing;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthViewModel;
  }

  @override
  void update(void Function(AuthViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthViewModel build() => _build();

  _$AuthViewModel _build() {
    _$AuthViewModel _$result;
    try {
      _$result = _$v ??
          new _$AuthViewModel._(
              loginWithPassword: BuiltValueNullFieldError.checkNotNull(
                  loginWithPassword, r'AuthViewModel', 'loginWithPassword'),
              registerWithMobile: BuiltValueNullFieldError.checkNotNull(
                  registerWithMobile, r'AuthViewModel', 'registerWithMobile'),
              logOut: BuiltValueNullFieldError.checkNotNull(
                  logOut, r'AuthViewModel', 'logOut'),
              currentUser: _currentUser?.build(),
              isInitializing: BuiltValueNullFieldError.checkNotNull(
                  isInitializing, r'AuthViewModel', 'isInitializing'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'currentUser';
        _currentUser?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AuthViewModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
