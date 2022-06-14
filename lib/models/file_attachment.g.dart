// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_attachment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FileAttachment> _$fileAttachmentSerializer =
    new _$FileAttachmentSerializer();

class _$FileAttachmentSerializer
    implements StructuredSerializer<FileAttachment> {
  @override
  final Iterable<Type> types = const [FileAttachment, _$FileAttachment];
  @override
  final String wireName = 'FileAttachment';

  @override
  Iterable<Object?> serialize(Serializers serializers, FileAttachment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.attachmentUrl;
    if (value != null) {
      result
        ..add('attachment_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.attachmentType;
    if (value != null) {
      result
        ..add('attachment_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.attachmentName;
    if (value != null) {
      result
        ..add('attachment_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.attachmentFile;
    if (value != null) {
      result
        ..add('attachmentFile')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(File)));
    }
    value = object.fileType;
    if (value != null) {
      result
        ..add('file_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.thumbnailUrl;
    if (value != null) {
      result
        ..add('thumbnail_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  FileAttachment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FileAttachmentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'attachment_url':
          result.attachmentUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'attachment_type':
          result.attachmentType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'attachment_name':
          result.attachmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'attachmentFile':
          result.attachmentFile = serializers.deserialize(value,
              specifiedType: const FullType(File)) as File?;
          break;
        case 'file_type':
          result.fileType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'thumbnail_url':
          result.thumbnailUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$FileAttachment extends FileAttachment {
  @override
  final String? attachmentUrl;
  @override
  final int? id;
  @override
  final String? attachmentType;
  @override
  final String? attachmentName;
  @override
  final File? attachmentFile;
  @override
  final String? fileType;
  @override
  final String? thumbnailUrl;

  factory _$FileAttachment([void Function(FileAttachmentBuilder)? updates]) =>
      (new FileAttachmentBuilder()..update(updates))._build();

  _$FileAttachment._(
      {this.attachmentUrl,
      this.id,
      this.attachmentType,
      this.attachmentName,
      this.attachmentFile,
      this.fileType,
      this.thumbnailUrl})
      : super._();

  @override
  FileAttachment rebuild(void Function(FileAttachmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileAttachmentBuilder toBuilder() =>
      new FileAttachmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileAttachment &&
        attachmentUrl == other.attachmentUrl &&
        id == other.id &&
        attachmentType == other.attachmentType &&
        attachmentName == other.attachmentName &&
        attachmentFile == other.attachmentFile &&
        fileType == other.fileType &&
        thumbnailUrl == other.thumbnailUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, attachmentUrl.hashCode), id.hashCode),
                        attachmentType.hashCode),
                    attachmentName.hashCode),
                attachmentFile.hashCode),
            fileType.hashCode),
        thumbnailUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileAttachment')
          ..add('attachmentUrl', attachmentUrl)
          ..add('id', id)
          ..add('attachmentType', attachmentType)
          ..add('attachmentName', attachmentName)
          ..add('attachmentFile', attachmentFile)
          ..add('fileType', fileType)
          ..add('thumbnailUrl', thumbnailUrl))
        .toString();
  }
}

class FileAttachmentBuilder
    implements Builder<FileAttachment, FileAttachmentBuilder> {
  _$FileAttachment? _$v;

  String? _attachmentUrl;
  String? get attachmentUrl => _$this._attachmentUrl;
  set attachmentUrl(String? attachmentUrl) =>
      _$this._attachmentUrl = attachmentUrl;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _attachmentType;
  String? get attachmentType => _$this._attachmentType;
  set attachmentType(String? attachmentType) =>
      _$this._attachmentType = attachmentType;

  String? _attachmentName;
  String? get attachmentName => _$this._attachmentName;
  set attachmentName(String? attachmentName) =>
      _$this._attachmentName = attachmentName;

  File? _attachmentFile;
  File? get attachmentFile => _$this._attachmentFile;
  set attachmentFile(File? attachmentFile) =>
      _$this._attachmentFile = attachmentFile;

  String? _fileType;
  String? get fileType => _$this._fileType;
  set fileType(String? fileType) => _$this._fileType = fileType;

  String? _thumbnailUrl;
  String? get thumbnailUrl => _$this._thumbnailUrl;
  set thumbnailUrl(String? thumbnailUrl) => _$this._thumbnailUrl = thumbnailUrl;

  FileAttachmentBuilder();

  FileAttachmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attachmentUrl = $v.attachmentUrl;
      _id = $v.id;
      _attachmentType = $v.attachmentType;
      _attachmentName = $v.attachmentName;
      _attachmentFile = $v.attachmentFile;
      _fileType = $v.fileType;
      _thumbnailUrl = $v.thumbnailUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileAttachment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FileAttachment;
  }

  @override
  void update(void Function(FileAttachmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileAttachment build() => _build();

  _$FileAttachment _build() {
    final _$result = _$v ??
        new _$FileAttachment._(
            attachmentUrl: attachmentUrl,
            id: id,
            attachmentType: attachmentType,
            attachmentName: attachmentName,
            attachmentFile: attachmentFile,
            fileType: fileType,
            thumbnailUrl: thumbnailUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
