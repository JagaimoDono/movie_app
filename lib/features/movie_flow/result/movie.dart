import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/features/movie_flow/genre/genre.dart';
import 'package:movie_app/features/movie_flow/result/movie_entity.dart';

part 'movie.freezed.dart';

@freezed
class Movie with _$Movie {
  const Movie._();

  const factory Movie({
    required String title,
    required String overview,
    required num voteAverage,
    required List<Genre> genres,
    required String releaseDate,
    String? backdropPath,
    String? posterPath,
  }) = _Movie;

  factory Movie.initial() => const Movie(
        title: 'title',
        overview: 'overview',
        voteAverage: 0,
        genres: [],
        releaseDate: '',
        backdropPath: '',
        posterPath: '',
      );

  factory Movie.fromMovieEntity(MovieEntity movieEntity, List<Genre> genres) =>
      Movie(
        title: movieEntity.title,
        overview: movieEntity.overview,
        voteAverage: movieEntity.voteAverage,
        genres: genres
            .where((genre) => movieEntity.genreIds.contains(genre.id))
            .toList(growable: false),
        releaseDate: movieEntity.releaseDate,
        backdropPath:
            'https://image.tmdb.org/t/p/original/${movieEntity.backdropPath}',
        posterPath:
            'https://image.tmdb.org/t/p/original/${movieEntity.posterPath}',
      );

  String get genresCommaSeparated =>
      genres.map((e) => e.name).toList().join(', ');
}
