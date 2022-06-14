import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:final_task/models/models.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[

  Pagination,
  ApiError,
  ApiSuccess,
  AppUser,
  Notifications,
  FileAttachment,
  AccessToken
])
final Serializers serializers =
(_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();



