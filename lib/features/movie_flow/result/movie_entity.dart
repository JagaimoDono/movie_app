// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_entity.freezed.dart';
part 'movie_entity.g.dart';

@freezed
class MovieEntity with _$MovieEntity {
  const factory MovieEntity({
    required String title,
    required String overview,
    @JsonKey(name: 'vote_average') required num voteAverage,
    @JsonKey(name: 'genre_ids') required List<int> genreIds,
    @JsonKey(name: 'release_date') required String releaseDate,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'poster_path') String? posterPath,
  }) = _MovieEntity;

  factory MovieEntity.fromJson(Map<String, dynamic> json) =>
      _$MovieEntityFromJson(json);
}
