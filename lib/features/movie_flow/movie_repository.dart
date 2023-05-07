import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:movie_app/core/environment_variables.dart';
import 'package:movie_app/core/failure.dart';
import 'package:movie_app/features/movie_flow/genre/genre_entity.dart';
import 'package:movie_app/features/movie_flow/result/movie_entity.dart';
import 'package:movie_app/main.dart';

final movieRepositoryProvider = Provider<MovieRepository>((ref) {
  final dio = ref.watch(dioProvider);
  return TMDBMovieRepository(dio: dio);
});

abstract class MovieRepository {
  Future<List<GenreEntity>> getMovieGenres();
  Future<List<MovieEntity>> getRecommendedMovies(
      double rating, String date, String genreIds);
}

class TMDBMovieRepository implements MovieRepository {
  final Dio dio;

  TMDBMovieRepository({required this.dio});

  @override
  Future<List<GenreEntity>> getMovieGenres() async {
    try {
      final response = await dio.get('/genre/movie/list', queryParameters: {
        'api_key': apiKey,
        'language': 'en-US',
      });

      final results = List<Map<String, dynamic>>.from(response.data['genres']);
      final genres = results.map((e) => GenreEntity.fromJson(e)).toList();

      return genres;
    } on DioError catch (e) {
      if (e.error is SocketException) {
        throw Failure(message: 'No Internet Connection', exception: e);
      }

      throw Failure(
          message: e.response?.statusMessage ?? 'Something went wrong',
          code: e.response?.statusCode);
    }
  }

  @override
  Future<List<MovieEntity>> getRecommendedMovies(
      double rating, String date, String genreIds) async {
    try {
      final response = await dio.get('/discover/movie', queryParameters: {
        'api_key': apiKey,
        'language': 'en_US',
        'sort_by': 'popularity.desc',
        'include_adult': 'false',
        'vote_average.gte': rating,
        'page': 1,
        'release_date.gte': date,
        'with_genres': genreIds,
      });

      final results = List<Map<String, dynamic>>.from(response.data['results']);
      final movies = results.map((e) => MovieEntity.fromJson(e)).toList();

      return movies;
    } on DioError catch (e) {
      if (e.error is SocketException) {
        throw Failure(message: 'No Internet Connection', exception: e);
      }

      throw Failure(
          message: e.response?.statusMessage ?? 'Something went wrong',
          code: e.response?.statusCode);
    }
  }
}
