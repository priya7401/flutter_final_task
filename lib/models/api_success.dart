import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:final_task/models/models.dart';

part 'api_success.g.dart';

abstract class ApiSuccess implements Built<ApiSuccess, ApiSuccessBuilder> {
  factory ApiSuccess([ApiSuccessBuilder Function(ApiSuccessBuilder builder) updates]) =
      _$ApiSuccess;

  ApiSuccess._();

  int? get status;

  String? get message;

  AccessToken? get token;

  @BuiltValueField(wireName: 'customer')
  AppUser? get user;

//***************************** pagination ***********************************//
  Pagination? get meta;

//****************************** notification-module *************************///

  @BuiltValueField(wireName: 'notifications')
  BuiltList<Notifications?> get notifications;

  @BuiltValueField(wireName: 'notification')
  Notifications? get notification;

//****************************** file-upload **********************************//

  @BuiltValueField(wireName: 'uploaded_file')
  FileAttachment? get uploadedFile;

  static Serializer<ApiSuccess> get serializer => _$apiSuccessSerializer;
}
