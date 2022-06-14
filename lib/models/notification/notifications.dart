import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'notifications.g.dart';

@JsonSerializable()
abstract class Notifications
    implements Built<Notifications, NotificationsBuilder> {
  factory Notifications(
          [NotificationsBuilder Function(NotificationsBuilder builder) updates]) =
      _$Notifications;

  Notifications._();

  int? get id;

  @BuiltValueField(wireName: 'created_at')
  String? get createdAT;

  String? get title;

  String? get body;

  @BuiltValueField(wireName: 'is_unread')
  bool? get isUnRead;

  static Serializer<Notifications> get serializer => _$notificationsSerializer;
}
