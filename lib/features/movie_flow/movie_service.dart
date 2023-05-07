import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/movie_flow/genre/genre.dart';
import 'package:movie_app/features/movie_flow/movie_repository.dart';
import 'package:movie_app/features/movie_flow/result/movie.dart';

final movieServiceProvider = Provider<MovieService>((ref) {
  final movieRepository = ref.watch(movieRepositoryProvider);

  return TMDBMovieRepository(movieRepository);
});

abstract class MovieService {
  Future<List<Genre>> getMovieGenres();
  Future<Movie> getRecommendedMovie(
      int rating, int yearsBack, List<Genre> genres,
      [DateTime? yearsBackFromDate]);
}

class TMDBMovieRepository implements MovieService {
  final MovieRepository _movieRepository;

  TMDBMovieRepository(this._movieRepository);
  @override
  Future<List<Genre>> getMovieGenres() async {
    final genreEntities = await _movieRepository.getMovieGenres();
    final genres = genreEntities.map((e) => Genre.fromEntity(e)).toList();

    return genres;
  }

  @override
  Future<Movie> getRecommendedMovie(
      int rating, int yearsBack, List<Genre> genres,
      [DateTime? yearsBackFromDate]) async {
    final date = yearsBackFromDate ?? DateTime.now();
    final year = date.year - yearsBack;
    final genreIds = genres.map((e) => e.id).toList().join(',');

    final movieEntities = await _movieRepository.getRecommendedMovies(
        rating.toDouble(), '$year-01-01', genreIds);
    final movies =
        movieEntities.map((e) => Movie.fromMovieEntity(e, genres)).toList();

    final rnd = Random();
    final randomMovie = movies[rnd.nextInt(movies.length)];

    return randomMovie;
  }
}
