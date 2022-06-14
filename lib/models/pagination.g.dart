// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Pagination> _$paginationSerializer = new _$PaginationSerializer();
Serializer<PageLinks> _$pageLinksSerializer = new _$PageLinksSerializer();

class _$PaginationSerializer implements StructuredSerializer<Pagination> {
  @override
  final Iterable<Type> types = const [Pagination, _$Pagination];
  @override
  final String wireName = 'Pagination';

  @override
  Iterable<Object?> serialize(Serializers serializers, Pagination object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.limit;
    if (value != null) {
      result
        ..add('limit')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalPages;
    if (value != null) {
      result
        ..add('total_pages')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalCount;
    if (value != null) {
      result
        ..add('total_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.links;
    if (value != null) {
      result
        ..add('links')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(PageLinks)));
    }
    return result;
  }

  @override
  Pagination deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PaginationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'total_pages':
          result.totalPages = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'total_count':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'links':
          result.links.replace(serializers.deserialize(value,
              specifiedType: const FullType(PageLinks))! as PageLinks);
          break;
      }
    }

    return result.build();
  }
}

class _$PageLinksSerializer implements StructuredSerializer<PageLinks> {
  @override
  final Iterable<Type> types = const [PageLinks, _$PageLinks];
  @override
  final String wireName = 'PageLinks';

  @override
  Iterable<Object?> serialize(Serializers serializers, PageLinks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.current;
    if (value != null) {
      result
        ..add('current')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.previous;
    if (value != null) {
      result
        ..add('previous')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.next;
    if (value != null) {
      result
        ..add('next')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.first;
    if (value != null) {
      result
        ..add('first')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.last;
    if (value != null) {
      result
        ..add('last')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PageLinks deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PageLinksBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'current':
          result.current = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'previous':
          result.previous = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'next':
          result.next = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'first':
          result.first = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'last':
          result.last = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Pagination extends Pagination {
  @override
  final int? page;
  @override
  final int? limit;
  @override
  final int? totalPages;
  @override
  final int? totalCount;
  @override
  final PageLinks? links;

  factory _$Pagination([void Function(PaginationBuilder)? updates]) =>
      (new PaginationBuilder()..update(updates))._build();

  _$Pagination._(
      {this.page, this.limit, this.totalPages, this.totalCount, this.links})
      : super._();

  @override
  Pagination rebuild(void Function(PaginationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaginationBuilder toBuilder() => new PaginationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Pagination &&
        page == other.page &&
        limit == other.limit &&
        totalPages == other.totalPages &&
        totalCount == other.totalCount &&
        links == other.links;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, page.hashCode), limit.hashCode),
                totalPages.hashCode),
            totalCount.hashCode),
        links.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Pagination')
          ..add('page', page)
          ..add('limit', limit)
          ..add('totalPages', totalPages)
          ..add('totalCount', totalCount)
          ..add('links', links))
        .toString();
  }
}

class PaginationBuilder implements Builder<Pagination, PaginationBuilder> {
  _$Pagination? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  int? _totalPages;
  int? get totalPages => _$this._totalPages;
  set totalPages(int? totalPages) => _$this._totalPages = totalPages;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  PageLinksBuilder? _links;
  PageLinksBuilder get links => _$this._links ??= new PageLinksBuilder();
  set links(PageLinksBuilder? links) => _$this._links = links;

  PaginationBuilder();

  PaginationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _limit = $v.limit;
      _totalPages = $v.totalPages;
      _totalCount = $v.totalCount;
      _links = $v.links?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Pagination other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Pagination;
  }

  @override
  void update(void Function(PaginationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Pagination build() => _build();

  _$Pagination _build() {
    _$Pagination _$result;
    try {
      _$result = _$v ??
          new _$Pagination._(
              page: page,
              limit: limit,
              totalPages: totalPages,
              totalCount: totalCount,
              links: _links?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Pagination', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PageLinks extends PageLinks {
  @override
  final String? current;
  @override
  final String? previous;
  @override
  final String? next;
  @override
  final String? first;
  @override
  final String? last;

  factory _$PageLinks([void Function(PageLinksBuilder)? updates]) =>
      (new PageLinksBuilder()..update(updates))._build();

  _$PageLinks._({this.current, this.previous, this.next, this.first, this.last})
      : super._();

  @override
  PageLinks rebuild(void Function(PageLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PageLinksBuilder toBuilder() => new PageLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageLinks &&
        current == other.current &&
        previous == other.previous &&
        next == other.next &&
        first == other.first &&
        last == other.last;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, current.hashCode), previous.hashCode),
                next.hashCode),
            first.hashCode),
        last.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PageLinks')
          ..add('current', current)
          ..add('previous', previous)
          ..add('next', next)
          ..add('first', first)
          ..add('last', last))
        .toString();
  }
}

class PageLinksBuilder implements Builder<PageLinks, PageLinksBuilder> {
  _$PageLinks? _$v;

  String? _current;
  String? get current => _$this._current;
  set current(String? current) => _$this._current = current;

  String? _previous;
  String? get previous => _$this._previous;
  set previous(String? previous) => _$this._previous = previous;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  String? _first;
  String? get first => _$this._first;
  set first(String? first) => _$this._first = first;

  String? _last;
  String? get last => _$this._last;
  set last(String? last) => _$this._last = last;

  PageLinksBuilder();

  PageLinksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _current = $v.current;
      _previous = $v.previous;
      _next = $v.next;
      _first = $v.first;
      _last = $v.last;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PageLinks other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PageLinks;
  }

  @override
  void update(void Function(PageLinksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PageLinks build() => _build();

  _$PageLinks _build() {
    final _$result = _$v ??
        new _$PageLinks._(
            current: current,
            previous: previous,
            next: next,
            first: first,
            last: last);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
