// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppState extends AppState {
  @override
  final GlobalKey<NavigatorState> navigator;
  @override
  final AppUser? currentUser;
  @override
  final bool isInitializing;
  @override
  final bool isLoading;
  @override
  final int? onMessageCount;
  @override
  final String? errorMessage;
  @override
  final String? successMessage;
  @override
  final Pagination? pagination;
  @override
  final BuiltList<Notifications>? notificationList;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates))._build();

  _$AppState._(
      {required this.navigator,
      this.currentUser,
      required this.isInitializing,
      required this.isLoading,
      this.onMessageCount,
      this.errorMessage,
      this.successMessage,
      this.pagination,
      this.notificationList})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(navigator, r'AppState', 'navigator');
    BuiltValueNullFieldError.checkNotNull(
        isInitializing, r'AppState', 'isInitializing');
    BuiltValueNullFieldError.checkNotNull(isLoading, r'AppState', 'isLoading');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        navigator == other.navigator &&
        currentUser == other.currentUser &&
        isInitializing == other.isInitializing &&
        isLoading == other.isLoading &&
        onMessageCount == other.onMessageCount &&
        errorMessage == other.errorMessage &&
        successMessage == other.successMessage &&
        pagination == other.pagination &&
        notificationList == other.notificationList;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, navigator.hashCode),
                                    currentUser.hashCode),
                                isInitializing.hashCode),
                            isLoading.hashCode),
                        onMessageCount.hashCode),
                    errorMessage.hashCode),
                successMessage.hashCode),
            pagination.hashCode),
        notificationList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppState')
          ..add('navigator', navigator)
          ..add('currentUser', currentUser)
          ..add('isInitializing', isInitializing)
          ..add('isLoading', isLoading)
          ..add('onMessageCount', onMessageCount)
          ..add('errorMessage', errorMessage)
          ..add('successMessage', successMessage)
          ..add('pagination', pagination)
          ..add('notificationList', notificationList))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  GlobalKey<NavigatorState>? _navigator;
  GlobalKey<NavigatorState>? get navigator => _$this._navigator;
  set navigator(GlobalKey<NavigatorState>? navigator) =>
      _$this._navigator = navigator;

  AppUserBuilder? _currentUser;
  AppUserBuilder get currentUser =>
      _$this._currentUser ??= new AppUserBuilder();
  set currentUser(AppUserBuilder? currentUser) =>
      _$this._currentUser = currentUser;

  bool? _isInitializing;
  bool? get isInitializing => _$this._isInitializing;
  set isInitializing(bool? isInitializing) =>
      _$this._isInitializing = isInitializing;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  int? _onMessageCount;
  int? get onMessageCount => _$this._onMessageCount;
  set onMessageCount(int? onMessageCount) =>
      _$this._onMessageCount = onMessageCount;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  String? _successMessage;
  String? get successMessage => _$this._successMessage;
  set successMessage(String? successMessage) =>
      _$this._successMessage = successMessage;

  PaginationBuilder? _pagination;
  PaginationBuilder get pagination =>
      _$this._pagination ??= new PaginationBuilder();
  set pagination(PaginationBuilder? pagination) =>
      _$this._pagination = pagination;

  ListBuilder<Notifications>? _notificationList;
  ListBuilder<Notifications> get notificationList =>
      _$this._notificationList ??= new ListBuilder<Notifications>();
  set notificationList(ListBuilder<Notifications>? notificationList) =>
      _$this._notificationList = notificationList;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _navigator = $v.navigator;
      _currentUser = $v.currentUser?.toBuilder();
      _isInitializing = $v.isInitializing;
      _isLoading = $v.isLoading;
      _onMessageCount = $v.onMessageCount;
      _errorMessage = $v.errorMessage;
      _successMessage = $v.successMessage;
      _pagination = $v.pagination?.toBuilder();
      _notificationList = $v.notificationList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppState build() => _build();

  _$AppState _build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              navigator: BuiltValueNullFieldError.checkNotNull(
                  navigator, r'AppState', 'navigator'),
              currentUser: _currentUser?.build(),
              isInitializing: BuiltValueNullFieldError.checkNotNull(
                  isInitializing, r'AppState', 'isInitializing'),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, r'AppState', 'isLoading'),
              onMessageCount: onMessageCount,
              errorMessage: errorMessage,
              successMessage: successMessage,
              pagination: _pagination?.build(),
              notificationList: _notificationList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'currentUser';
        _currentUser?.build();

        _$failedField = 'pagination';
        _pagination?.build();
        _$failedField = 'notificationList';
        _notificationList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
