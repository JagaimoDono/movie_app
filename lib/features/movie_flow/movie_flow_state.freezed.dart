// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_flow_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieFlowState {
  PageController get pageController => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  int get yearsBack => throw _privateConstructorUsedError;
  AsyncValue<List<Genre>> get genres => throw _privateConstructorUsedError;
  AsyncValue<Movie> get movie => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieFlowStateCopyWith<MovieFlowState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieFlowStateCopyWith<$Res> {
  factory $MovieFlowStateCopyWith(
          MovieFlowState value, $Res Function(MovieFlowState) then) =
      _$MovieFlowStateCopyWithImpl<$Res, MovieFlowState>;
  @useResult
  $Res call(
      {PageController pageController,
      int rating,
      int yearsBack,
      AsyncValue<List<Genre>> genres,
      AsyncValue<Movie> movie});
}

/// @nodoc
class _$MovieFlowStateCopyWithImpl<$Res, $Val extends MovieFlowState>
    implements $MovieFlowStateCopyWith<$Res> {
  _$MovieFlowStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageController = null,
    Object? rating = null,
    Object? yearsBack = null,
    Object? genres = null,
    Object? movie = null,
  }) {
    return _then(_value.copyWith(
      pageController: null == pageController
          ? _value.pageController
          : pageController // ignore: cast_nullable_to_non_nullable
              as PageController,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      yearsBack: null == yearsBack
          ? _value.yearsBack
          : yearsBack // ignore: cast_nullable_to_non_nullable
              as int,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Genre>>,
      movie: null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as AsyncValue<Movie>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieFlowStateCopyWith<$Res>
    implements $MovieFlowStateCopyWith<$Res> {
  factory _$$_MovieFlowStateCopyWith(
          _$_MovieFlowState value, $Res Function(_$_MovieFlowState) then) =
      __$$_MovieFlowStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageController pageController,
      int rating,
      int yearsBack,
      AsyncValue<List<Genre>> genres,
      AsyncValue<Movie> movie});
}

/// @nodoc
class __$$_MovieFlowStateCopyWithImpl<$Res>
    extends _$MovieFlowStateCopyWithImpl<$Res, _$_MovieFlowState>
    implements _$$_MovieFlowStateCopyWith<$Res> {
  __$$_MovieFlowStateCopyWithImpl(
      _$_MovieFlowState _value, $Res Function(_$_MovieFlowState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageController = null,
    Object? rating = null,
    Object? yearsBack = null,
    Object? genres = null,
    Object? movie = null,
  }) {
    return _then(_$_MovieFlowState(
      pageController: null == pageController
          ? _value.pageController
          : pageController // ignore: cast_nullable_to_non_nullable
              as PageController,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      yearsBack: null == yearsBack
          ? _value.yearsBack
          : yearsBack // ignore: cast_nullable_to_non_nullable
              as int,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Genre>>,
      movie: null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as AsyncValue<Movie>,
    ));
  }
}

/// @nodoc

class _$_MovieFlowState implements _MovieFlowState {
  _$_MovieFlowState(
      {required this.pageController,
      this.rating = 5,
      this.yearsBack = 10,
      required this.genres,
      required this.movie});

  @override
  final PageController pageController;
  @override
  @JsonKey()
  final int rating;
  @override
  @JsonKey()
  final int yearsBack;
  @override
  final AsyncValue<List<Genre>> genres;
  @override
  final AsyncValue<Movie> movie;

  @override
  String toString() {
    return 'MovieFlowState(pageController: $pageController, rating: $rating, yearsBack: $yearsBack, genres: $genres, movie: $movie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieFlowState &&
            (identical(other.pageController, pageController) ||
                other.pageController == pageController) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.yearsBack, yearsBack) ||
                other.yearsBack == yearsBack) &&
            (identical(other.genres, genres) || other.genres == genres) &&
            (identical(other.movie, movie) || other.movie == movie));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, pageController, rating, yearsBack, genres, movie);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieFlowStateCopyWith<_$_MovieFlowState> get copyWith =>
      __$$_MovieFlowStateCopyWithImpl<_$_MovieFlowState>(this, _$identity);
}

abstract class _MovieFlowState implements MovieFlowState {
  factory _MovieFlowState(
      {required final PageController pageController,
      final int rating,
      final int yearsBack,
      required final AsyncValue<List<Genre>> genres,
      required final AsyncValue<Movie> movie}) = _$_MovieFlowState;

  @override
  PageController get pageController;
  @override
  int get rating;
  @override
  int get yearsBack;
  @override
  AsyncValue<List<Genre>> get genres;
  @override
  AsyncValue<Movie> get movie;
  @override
  @JsonKey(ignore: true)
  _$$_MovieFlowStateCopyWith<_$_MovieFlowState> get copyWith =>
      throw _privateConstructorUsedError;
}
