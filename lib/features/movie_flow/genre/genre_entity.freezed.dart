// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'genre_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenreEntity _$GenreEntityFromJson(Map<String, dynamic> json) {
  return _GenreEntity.fromJson(json);
}

/// @nodoc
mixin _$GenreEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenreEntityCopyWith<GenreEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreEntityCopyWith<$Res> {
  factory $GenreEntityCopyWith(
          GenreEntity value, $Res Function(GenreEntity) then) =
      _$GenreEntityCopyWithImpl<$Res, GenreEntity>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$GenreEntityCopyWithImpl<$Res, $Val extends GenreEntity>
    implements $GenreEntityCopyWith<$Res> {
  _$GenreEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GenreEntityCopyWith<$Res>
    implements $GenreEntityCopyWith<$Res> {
  factory _$$_GenreEntityCopyWith(
          _$_GenreEntity value, $Res Function(_$_GenreEntity) then) =
      __$$_GenreEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_GenreEntityCopyWithImpl<$Res>
    extends _$GenreEntityCopyWithImpl<$Res, _$_GenreEntity>
    implements _$$_GenreEntityCopyWith<$Res> {
  __$$_GenreEntityCopyWithImpl(
      _$_GenreEntity _value, $Res Function(_$_GenreEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_GenreEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenreEntity implements _GenreEntity {
  const _$_GenreEntity({required this.id, required this.name});

  factory _$_GenreEntity.fromJson(Map<String, dynamic> json) =>
      _$$_GenreEntityFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'GenreEntity(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenreEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenreEntityCopyWith<_$_GenreEntity> get copyWith =>
      __$$_GenreEntityCopyWithImpl<_$_GenreEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenreEntityToJson(
      this,
    );
  }
}

abstract class _GenreEntity implements GenreEntity {
  const factory _GenreEntity(
      {required final int id, required final String name}) = _$_GenreEntity;

  factory _GenreEntity.fromJson(Map<String, dynamic> json) =
      _$_GenreEntity.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_GenreEntityCopyWith<_$_GenreEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
