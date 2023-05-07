// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieEntity _$MovieEntityFromJson(Map<String, dynamic> json) {
  return _MovieEntity.fromJson(json);
}

/// @nodoc
mixin _$MovieEntity {
  String get title => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  num get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieEntityCopyWith<MovieEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieEntityCopyWith<$Res> {
  factory $MovieEntityCopyWith(
          MovieEntity value, $Res Function(MovieEntity) then) =
      _$MovieEntityCopyWithImpl<$Res, MovieEntity>;
  @useResult
  $Res call(
      {String title,
      String overview,
      @JsonKey(name: 'vote_average') num voteAverage,
      @JsonKey(name: 'genre_ids') List<int> genreIds,
      @JsonKey(name: 'release_date') String releaseDate,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'poster_path') String? posterPath});
}

/// @nodoc
class _$MovieEntityCopyWithImpl<$Res, $Val extends MovieEntity>
    implements $MovieEntityCopyWith<$Res> {
  _$MovieEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? overview = null,
    Object? voteAverage = null,
    Object? genreIds = null,
    Object? releaseDate = null,
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as num,
      genreIds: null == genreIds
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieEntityCopyWith<$Res>
    implements $MovieEntityCopyWith<$Res> {
  factory _$$_MovieEntityCopyWith(
          _$_MovieEntity value, $Res Function(_$_MovieEntity) then) =
      __$$_MovieEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String overview,
      @JsonKey(name: 'vote_average') num voteAverage,
      @JsonKey(name: 'genre_ids') List<int> genreIds,
      @JsonKey(name: 'release_date') String releaseDate,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'poster_path') String? posterPath});
}

/// @nodoc
class __$$_MovieEntityCopyWithImpl<$Res>
    extends _$MovieEntityCopyWithImpl<$Res, _$_MovieEntity>
    implements _$$_MovieEntityCopyWith<$Res> {
  __$$_MovieEntityCopyWithImpl(
      _$_MovieEntity _value, $Res Function(_$_MovieEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? overview = null,
    Object? voteAverage = null,
    Object? genreIds = null,
    Object? releaseDate = null,
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
  }) {
    return _then(_$_MovieEntity(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as num,
      genreIds: null == genreIds
          ? _value._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieEntity implements _MovieEntity {
  const _$_MovieEntity(
      {required this.title,
      required this.overview,
      @JsonKey(name: 'vote_average') required this.voteAverage,
      @JsonKey(name: 'genre_ids') required final List<int> genreIds,
      @JsonKey(name: 'release_date') required this.releaseDate,
      @JsonKey(name: 'backdrop_path') this.backdropPath,
      @JsonKey(name: 'poster_path') this.posterPath})
      : _genreIds = genreIds;

  factory _$_MovieEntity.fromJson(Map<String, dynamic> json) =>
      _$$_MovieEntityFromJson(json);

  @override
  final String title;
  @override
  final String overview;
  @override
  @JsonKey(name: 'vote_average')
  final num voteAverage;
  final List<int> _genreIds;
  @override
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds {
    if (_genreIds is EqualUnmodifiableListView) return _genreIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genreIds);
  }

  @override
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;

  @override
  String toString() {
    return 'MovieEntity(title: $title, overview: $overview, voteAverage: $voteAverage, genreIds: $genreIds, releaseDate: $releaseDate, backdropPath: $backdropPath, posterPath: $posterPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieEntity &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      overview,
      voteAverage,
      const DeepCollectionEquality().hash(_genreIds),
      releaseDate,
      backdropPath,
      posterPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieEntityCopyWith<_$_MovieEntity> get copyWith =>
      __$$_MovieEntityCopyWithImpl<_$_MovieEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieEntityToJson(
      this,
    );
  }
}

abstract class _MovieEntity implements MovieEntity {
  const factory _MovieEntity(
      {required final String title,
      required final String overview,
      @JsonKey(name: 'vote_average') required final num voteAverage,
      @JsonKey(name: 'genre_ids') required final List<int> genreIds,
      @JsonKey(name: 'release_date') required final String releaseDate,
      @JsonKey(name: 'backdrop_path') final String? backdropPath,
      @JsonKey(name: 'poster_path') final String? posterPath}) = _$_MovieEntity;

  factory _MovieEntity.fromJson(Map<String, dynamic> json) =
      _$_MovieEntity.fromJson;

  @override
  String get title;
  @override
  String get overview;
  @override
  @JsonKey(name: 'vote_average')
  num get voteAverage;
  @override
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds;
  @override
  @JsonKey(name: 'release_date')
  String get releaseDate;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(ignore: true)
  _$$_MovieEntityCopyWith<_$_MovieEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
