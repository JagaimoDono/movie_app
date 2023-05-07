import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/features/movie_flow/genre/genre.dart';
import 'package:movie_app/features/movie_flow/result/movie.dart';

part 'movie_flow_state.freezed.dart';

@freezed
class MovieFlowState with _$MovieFlowState {
  factory MovieFlowState({
    required PageController pageController,
    @Default(5) int rating,
    @Default(10) int yearsBack,
    required AsyncValue<List<Genre>> genres,
    required AsyncValue<Movie> movie,
  }) = _MovieFlowState;
}
