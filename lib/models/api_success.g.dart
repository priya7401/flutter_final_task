// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_success.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ApiSuccess> _$apiSuccessSerializer = new _$ApiSuccessSerializer();

class _$ApiSuccessSerializer implements StructuredSerializer<ApiSuccess> {
  @override
  final Iterable<Type> types = const [ApiSuccess, _$ApiSuccess];
  @override
  final String wireName = 'ApiSuccess';

  @override
  Iterable<Object?> serialize(Serializers serializers, ApiSuccess object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'notifications',
      serializers.serialize(object.notifications,
          specifiedType: const FullType(
              BuiltList, const [const FullType.nullable(Notifications)])),
    ];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.token;
    if (value != null) {
      result
        ..add('token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AccessToken)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AppUser)));
    }
    value = object.meta;
    if (value != null) {
      result
        ..add('meta')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Pagination)));
    }
    value = object.notification;
    if (value != null) {
      result
        ..add('notification')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Notifications)));
    }
    value = object.uploadedFile;
    if (value != null) {
      result
        ..add('uploaded_file')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(FileAttachment)));
    }
    return result;
  }

  @override
  ApiSuccess deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApiSuccessBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'token':
          result.token.replace(serializers.deserialize(value,
              specifiedType: const FullType(AccessToken))! as AccessToken);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(AppUser))! as AppUser);
          break;
        case 'meta':
          result.meta.replace(serializers.deserialize(value,
              specifiedType: const FullType(Pagination))! as Pagination);
          break;
        case 'notifications':
          result.notifications.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(Notifications)
              ]))! as BuiltList<Object?>);
          break;
        case 'notification':
          result.notification.replace(serializers.deserialize(value,
              specifiedType: const FullType(Notifications))! as Notifications);
          break;
        case 'uploaded_file':
          result.uploadedFile.replace(serializers.deserialize(value,
                  specifiedType: const FullType(FileAttachment))!
              as FileAttachment);
          break;
      }
    }

    return result.build();
  }
}

class _$ApiSuccess extends ApiSuccess {
  @override
  final int? status;
  @override
  final String? message;
  @override
  final AccessToken? token;
  @override
  final AppUser? user;
  @override
  final Pagination? meta;
  @override
  final BuiltList<Notifications?> notifications;
  @override
  final Notifications? notification;
  @override
  final FileAttachment? uploadedFile;

  factory _$ApiSuccess([void Function(ApiSuccessBuilder)? updates]) =>
      (new ApiSuccessBuilder()..update(updates))._build();

  _$ApiSuccess._(
      {this.status,
      this.message,
      this.token,
      this.user,
      this.meta,
      required this.notifications,
      this.notification,
      this.uploadedFile})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        notifications, r'ApiSuccess', 'notifications');
  }

  @override
  ApiSuccess rebuild(void Function(ApiSuccessBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiSuccessBuilder toBuilder() => new ApiSuccessBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiSuccess &&
        status == other.status &&
        message == other.message &&
        token == other.token &&
        user == other.user &&
        meta == other.meta &&
        notifications == other.notifications &&
        notification == other.notification &&
        uploadedFile == other.uploadedFile;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, status.hashCode), message.hashCode),
                            token.hashCode),
                        user.hashCode),
                    meta.hashCode),
                notifications.hashCode),
            notification.hashCode),
        uploadedFile.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiSuccess')
          ..add('status', status)
          ..add('message', message)
          ..add('token', token)
          ..add('user', user)
          ..add('meta', meta)
          ..add('notifications', notifications)
          ..add('notification', notification)
          ..add('uploadedFile', uploadedFile))
        .toString();
  }
}

class ApiSuccessBuilder implements Builder<ApiSuccess, ApiSuccessBuilder> {
  _$ApiSuccess? _$v;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  AccessTokenBuilder? _token;
  AccessTokenBuilder get token => _$this._token ??= new AccessTokenBuilder();
  set token(AccessTokenBuilder? token) => _$this._token = token;

  AppUserBuilder? _user;
  AppUserBuilder get user => _$this._user ??= new AppUserBuilder();
  set user(AppUserBuilder? user) => _$this._user = user;

  PaginationBuilder? _meta;
  PaginationBuilder get meta => _$this._meta ??= new PaginationBuilder();
  set meta(PaginationBuilder? meta) => _$this._meta = meta;

  ListBuilder<Notifications?>? _notifications;
  ListBuilder<Notifications?> get notifications =>
      _$this._notifications ??= new ListBuilder<Notifications?>();
  set notifications(ListBuilder<Notifications?>? notifications) =>
      _$this._notifications = notifications;

  NotificationsBuilder? _notification;
  NotificationsBuilder get notification =>
      _$this._notification ??= new NotificationsBuilder();
  set notification(NotificationsBuilder? notification) =>
      _$this._notification = notification;

  FileAttachmentBuilder? _uploadedFile;
  FileAttachmentBuilder get uploadedFile =>
      _$this._uploadedFile ??= new FileAttachmentBuilder();
  set uploadedFile(FileAttachmentBuilder? uploadedFile) =>
      _$this._uploadedFile = uploadedFile;

  ApiSuccessBuilder();

  ApiSuccessBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _token = $v.token?.toBuilder();
      _user = $v.user?.toBuilder();
      _meta = $v.meta?.toBuilder();
      _notifications = $v.notifications.toBuilder();
      _notification = $v.notification?.toBuilder();
      _uploadedFile = $v.uploadedFile?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiSuccess other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiSuccess;
  }

  @override
  void update(void Function(ApiSuccessBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiSuccess build() => _build();

  _$ApiSuccess _build() {
    _$ApiSuccess _$result;
    try {
      _$result = _$v ??
          new _$ApiSuccess._(
              status: status,
              message: message,
              token: _token?.build(),
              user: _user?.build(),
              meta: _meta?.build(),
              notifications: notifications.build(),
              notification: _notification?.build(),
              uploadedFile: _uploadedFile?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'token';
        _token?.build();
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'meta';
        _meta?.build();
        _$failedField = 'notifications';
        notifications.build();
        _$failedField = 'notification';
        _notification?.build();
        _$failedField = 'uploadedFile';
        _uploadedFile?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApiSuccess', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
