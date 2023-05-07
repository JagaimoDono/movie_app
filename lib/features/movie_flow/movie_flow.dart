import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/movie_flow/genre/genre_screen.dart';
import 'package:movie_app/features/movie_flow/movie_flow_controller.dart';
import 'package:movie_app/features/movie_flow/rating/rating_screen.dart';
import 'package:movie_app/features/movie_flow/result/result_screen.dart';
import 'package:movie_app/features/movie_flow/years_back/years_back_screen.dart';

import 'landing/landing_screen.dart';

class MovieFlow extends ConsumerWidget {
  const MovieFlow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PageView(
      controller: ref.watch(movieFlowControllerProvider).pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        const LandingScreen(),
        const GenreScreen(),
        const RatingScreen(),
        const YearsBackScreen(),
        const ResultScreen()
      ],
    );
  }
}
