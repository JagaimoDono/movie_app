import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movie_app/core/failure.dart';
import 'package:movie_app/features/movie_flow/genre/genre.dart';
import 'package:movie_app/features/movie_flow/genre/genre_entity.dart';
import 'package:movie_app/features/movie_flow/movie_repository.dart';
import 'package:movie_app/features/movie_flow/movie_service.dart';
import 'package:movie_app/features/movie_flow/result/movie.dart';
import 'package:movie_app/features/movie_flow/result/movie_entity.dart';

class MockMovieRepository extends Mock implements MovieRepository {}

void main() {
  late MovieRepository mockedMovieRepository;

  setUp(() {
    mockedMovieRepository = MockMovieRepository();
  });

  test('Given succesful call When getting GenreEntities Then map correct genre',
      () async {
    when(
      () => mockedMovieRepository.getMovieGenres(),
    ).thenAnswer((invocation) => Future.value([
          const GenreEntity(id: 0, name: 'Animation'),
        ]));

    final movieService = TMDBMovieService(mockedMovieRepository);

    final result = await movieService.getMovieGenres();

    expect(result.tryGetSuccess(), [
      const Genre(id: 0, name: 'Animation'),
    ]);
  });

  test('Given failed call When getting GenreEntities Then return failure',
      () async {
    when(
      () => mockedMovieRepository.getMovieGenres(),
    ).thenThrow(
        Failure(message: 'No internet', exception: const SocketException('')));

    final movieService = TMDBMovieService(mockedMovieRepository);

    final result = await movieService.getMovieGenres();

    expect(result.tryGetError()?.exception, isA<SocketException>());
  });

  test('Given successful call When gettin MovieEntity Then map correct movie',
      () async {
    const genre = Genre(name: 'Animation', id: 1, isSelected: true);
    const movieEntity = MovieEntity(
      title: 'Lilo & Stitch',
      overview: 'Story of Lilo',
      voteAverage: 5.2,
      genreIds: [1],
      releaseDate: '2010-02-03',
      backdropPath: 'pathToBackDrop',
      posterPath: 'pathToPoster',
    );

    when(
      () => mockedMovieRepository.getRecommendedMovies(any(), any(), any()),
    ).thenAnswer((invocation) => Future.value([movieEntity]));

    final movieService = TMDBMovieService(mockedMovieRepository);

    final result =
        await movieService.getRecommendedMovie(5, 20, [genre], DateTime(2021));
    final movie = result.tryGetSuccess();
    expect(
      movie,
      Movie(
        title: movieEntity.title,
        overview: movieEntity.overview,
        voteAverage: movieEntity.voteAverage,
        genres: const [genre],
        releaseDate: movieEntity.releaseDate,
        backdropPath: 'https://image.tmdb.org/t/p/original/pathToBackDrop',
        posterPath: 'https://image.tmdb.org/t/p/original/pathToPoster',
      ),
    );
  });

  test('Given failed call When getting MovieEntity Then return failure',
      () async {
    const genre = Genre(name: 'Animation', id: 1, isSelected: true);

    when(
      () => mockedMovieRepository.getRecommendedMovies(any(), any(), any()),
    ).thenThrow(
        Failure(message: 'message', exception: const SocketException('')));

    final movieService = TMDBMovieService(mockedMovieRepository);

    final result =
        await movieService.getRecommendedMovie(5, 20, [genre], DateTime(2021));

    expect(result.tryGetError()?.exception, isA<SocketException>());
  });
}
