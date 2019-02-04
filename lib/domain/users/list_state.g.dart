// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Idle extends Idle {
  factory _$Idle([void updates(IdleBuilder b)]) =>
      (new IdleBuilder()..update(updates)).build();

  _$Idle._() : super._();

  @override
  Idle rebuild(void updates(IdleBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  IdleBuilder toBuilder() => new IdleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Idle;
  }

  @override
  int get hashCode {
    return 923499413;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('Idle').toString();
  }
}

class IdleBuilder implements Builder<Idle, IdleBuilder> {
  _$Idle _$v;

  IdleBuilder();

  @override
  void replace(Idle other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Idle;
  }

  @override
  void update(void updates(IdleBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Idle build() {
    final _$result = _$v ?? new _$Idle._();
    replace(_$result);
    return _$result;
  }
}

class _$Loading extends Loading {
  factory _$Loading([void updates(LoadingBuilder b)]) =>
      (new LoadingBuilder()..update(updates)).build();

  _$Loading._() : super._();

  @override
  Loading rebuild(void updates(LoadingBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LoadingBuilder toBuilder() => new LoadingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Loading;
  }

  @override
  int get hashCode {
    return 990773020;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('Loading').toString();
  }
}

class LoadingBuilder implements Builder<Loading, LoadingBuilder> {
  _$Loading _$v;

  LoadingBuilder();

  @override
  void replace(Loading other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Loading;
  }

  @override
  void update(void updates(LoadingBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Loading build() {
    final _$result = _$v ?? new _$Loading._();
    replace(_$result);
    return _$result;
  }
}

class _$Loaded extends Loaded {
  @override
  final BuiltList<User> data;

  factory _$Loaded([void updates(LoadedBuilder b)]) =>
      (new LoadedBuilder()..update(updates)).build();

  _$Loaded._({this.data}) : super._() {
    if (data == null) {
      throw new BuiltValueNullFieldError('Loaded', 'data');
    }
  }

  @override
  Loaded rebuild(void updates(LoadedBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LoadedBuilder toBuilder() => new LoadedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Loaded && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Loaded')..add('data', data))
        .toString();
  }
}

class LoadedBuilder implements Builder<Loaded, LoadedBuilder> {
  _$Loaded _$v;

  ListBuilder<User> _data;
  ListBuilder<User> get data => _$this._data ??= new ListBuilder<User>();
  set data(ListBuilder<User> data) => _$this._data = data;

  LoadedBuilder();

  LoadedBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Loaded other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Loaded;
  }

  @override
  void update(void updates(LoadedBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Loaded build() {
    _$Loaded _$result;
    try {
      _$result = _$v ?? new _$Loaded._(data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Loaded', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
