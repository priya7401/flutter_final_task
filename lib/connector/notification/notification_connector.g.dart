// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_connector.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationModel extends NotificationModel {
  @override
  final NotificationListAction notificationListAction;
  @override
  final UpdateNotificationReadStatusAction updateNotificationReadStatus;
  @override
  final AppUser? currentUser;
  @override
  final bool isInitializing;
  @override
  final bool isLoading;
  @override
  final String? errorMessage;
  @override
  final String? successMessage;
  @override
  final BuiltList<Notifications>? notificationList;
  @override
  final int? onMessageCount;
  @override
  final Pagination? pagination;

  factory _$NotificationModel(
          [void Function(NotificationModelBuilder)? updates]) =>
      (new NotificationModelBuilder()..update(updates))._build();

  _$NotificationModel._(
      {required this.notificationListAction,
      required this.updateNotificationReadStatus,
      this.currentUser,
      required this.isInitializing,
      required this.isLoading,
      this.errorMessage,
      this.successMessage,
      this.notificationList,
      this.onMessageCount,
      this.pagination})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        notificationListAction, r'NotificationModel', 'notificationListAction');
    BuiltValueNullFieldError.checkNotNull(updateNotificationReadStatus,
        r'NotificationModel', 'updateNotificationReadStatus');
    BuiltValueNullFieldError.checkNotNull(
        isInitializing, r'NotificationModel', 'isInitializing');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'NotificationModel', 'isLoading');
  }

  @override
  NotificationModel rebuild(void Function(NotificationModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationModelBuilder toBuilder() =>
      new NotificationModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is NotificationModel &&
        notificationListAction == _$dynamicOther.notificationListAction &&
        updateNotificationReadStatus ==
            _$dynamicOther.updateNotificationReadStatus &&
        currentUser == other.currentUser &&
        isInitializing == other.isInitializing &&
        isLoading == other.isLoading &&
        errorMessage == other.errorMessage &&
        successMessage == other.successMessage &&
        notificationList == other.notificationList &&
        onMessageCount == other.onMessageCount &&
        pagination == other.pagination;
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
                                $jc(
                                    $jc($jc(0, notificationListAction.hashCode),
                                        updateNotificationReadStatus.hashCode),
                                    currentUser.hashCode),
                                isInitializing.hashCode),
                            isLoading.hashCode),
                        errorMessage.hashCode),
                    successMessage.hashCode),
                notificationList.hashCode),
            onMessageCount.hashCode),
        pagination.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationModel')
          ..add('notificationListAction', notificationListAction)
          ..add('updateNotificationReadStatus', updateNotificationReadStatus)
          ..add('currentUser', currentUser)
          ..add('isInitializing', isInitializing)
          ..add('isLoading', isLoading)
          ..add('errorMessage', errorMessage)
          ..add('successMessage', successMessage)
          ..add('notificationList', notificationList)
          ..add('onMessageCount', onMessageCount)
          ..add('pagination', pagination))
        .toString();
  }
}

class NotificationModelBuilder
    implements Builder<NotificationModel, NotificationModelBuilder> {
  _$NotificationModel? _$v;

  NotificationListAction? _notificationListAction;
  NotificationListAction? get notificationListAction =>
      _$this._notificationListAction;
  set notificationListAction(NotificationListAction? notificationListAction) =>
      _$this._notificationListAction = notificationListAction;

  UpdateNotificationReadStatusAction? _updateNotificationReadStatus;
  UpdateNotificationReadStatusAction? get updateNotificationReadStatus =>
      _$this._updateNotificationReadStatus;
  set updateNotificationReadStatus(
          UpdateNotificationReadStatusAction? updateNotificationReadStatus) =>
      _$this._updateNotificationReadStatus = updateNotificationReadStatus;

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

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  String? _successMessage;
  String? get successMessage => _$this._successMessage;
  set successMessage(String? successMessage) =>
      _$this._successMessage = successMessage;

  ListBuilder<Notifications>? _notificationList;
  ListBuilder<Notifications> get notificationList =>
      _$this._notificationList ??= new ListBuilder<Notifications>();
  set notificationList(ListBuilder<Notifications>? notificationList) =>
      _$this._notificationList = notificationList;

  int? _onMessageCount;
  int? get onMessageCount => _$this._onMessageCount;
  set onMessageCount(int? onMessageCount) =>
      _$this._onMessageCount = onMessageCount;

  PaginationBuilder? _pagination;
  PaginationBuilder get pagination =>
      _$this._pagination ??= new PaginationBuilder();
  set pagination(PaginationBuilder? pagination) =>
      _$this._pagination = pagination;

  NotificationModelBuilder();

  NotificationModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _notificationListAction = $v.notificationListAction;
      _updateNotificationReadStatus = $v.updateNotificationReadStatus;
      _currentUser = $v.currentUser?.toBuilder();
      _isInitializing = $v.isInitializing;
      _isLoading = $v.isLoading;
      _errorMessage = $v.errorMessage;
      _successMessage = $v.successMessage;
      _notificationList = $v.notificationList?.toBuilder();
      _onMessageCount = $v.onMessageCount;
      _pagination = $v.pagination?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationModel;
  }

  @override
  void update(void Function(NotificationModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationModel build() => _build();

  _$NotificationModel _build() {
    _$NotificationModel _$result;
    try {
      _$result = _$v ??
          new _$NotificationModel._(
              notificationListAction: BuiltValueNullFieldError.checkNotNull(
                  notificationListAction,
                  r'NotificationModel',
                  'notificationListAction'),
              updateNotificationReadStatus:
                  BuiltValueNullFieldError.checkNotNull(
                      updateNotificationReadStatus,
                      r'NotificationModel',
                      'updateNotificationReadStatus'),
              currentUser: _currentUser?.build(),
              isInitializing: BuiltValueNullFieldError.checkNotNull(
                  isInitializing, r'NotificationModel', 'isInitializing'),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, r'NotificationModel', 'isLoading'),
              errorMessage: errorMessage,
              successMessage: successMessage,
              notificationList: _notificationList?.build(),
              onMessageCount: onMessageCount,
              pagination: _pagination?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'currentUser';
        _currentUser?.build();

        _$failedField = 'notificationList';
        _notificationList?.build();

        _$failedField = 'pagination';
        _pagination?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NotificationModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
