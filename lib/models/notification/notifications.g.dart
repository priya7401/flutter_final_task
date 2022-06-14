// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Notifications> _$notificationsSerializer =
    new _$NotificationsSerializer();

class _$NotificationsSerializer implements StructuredSerializer<Notifications> {
  @override
  final Iterable<Type> types = const [Notifications, _$Notifications];
  @override
  final String wireName = 'Notifications';

  @override
  Iterable<Object?> serialize(Serializers serializers, Notifications object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.createdAT;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.body;
    if (value != null) {
      result
        ..add('body')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isUnRead;
    if (value != null) {
      result
        ..add('is_unread')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  Notifications deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'created_at':
          result.createdAT = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_unread':
          result.isUnRead = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$Notifications extends Notifications {
  @override
  final int? id;
  @override
  final String? createdAT;
  @override
  final String? title;
  @override
  final String? body;
  @override
  final bool? isUnRead;

  factory _$Notifications([void Function(NotificationsBuilder)? updates]) =>
      (new NotificationsBuilder()..update(updates))._build();

  _$Notifications._(
      {this.id, this.createdAT, this.title, this.body, this.isUnRead})
      : super._();

  @override
  Notifications rebuild(void Function(NotificationsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationsBuilder toBuilder() => new NotificationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Notifications &&
        id == other.id &&
        createdAT == other.createdAT &&
        title == other.title &&
        body == other.body &&
        isUnRead == other.isUnRead;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), createdAT.hashCode), title.hashCode),
            body.hashCode),
        isUnRead.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Notifications')
          ..add('id', id)
          ..add('createdAT', createdAT)
          ..add('title', title)
          ..add('body', body)
          ..add('isUnRead', isUnRead))
        .toString();
  }
}

class NotificationsBuilder
    implements Builder<Notifications, NotificationsBuilder> {
  _$Notifications? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _createdAT;
  String? get createdAT => _$this._createdAT;
  set createdAT(String? createdAT) => _$this._createdAT = createdAT;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  bool? _isUnRead;
  bool? get isUnRead => _$this._isUnRead;
  set isUnRead(bool? isUnRead) => _$this._isUnRead = isUnRead;

  NotificationsBuilder();

  NotificationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _createdAT = $v.createdAT;
      _title = $v.title;
      _body = $v.body;
      _isUnRead = $v.isUnRead;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Notifications other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Notifications;
  }

  @override
  void update(void Function(NotificationsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Notifications build() => _build();

  _$Notifications _build() {
    final _$result = _$v ??
        new _$Notifications._(
            id: id,
            createdAT: createdAT,
            title: title,
            body: body,
            isUnRead: isUnRead);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
