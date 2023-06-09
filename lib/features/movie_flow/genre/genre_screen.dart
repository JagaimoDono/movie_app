// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/core/failure.dart';
import 'package:movie_app/core/widgets/failure_screen.dart';
import 'package:movie_app/features/movie_flow/genre/list_card.dart';
import 'package:movie_app/features/movie_flow/movie_flow_controller.dart';

import '../../../core/constants.dart';
import '../../../core/widgets/primary_button.dart';

class GenreScreen extends ConsumerWidget {
  const GenreScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
            onPressed:
                ref.read(movieFlowControllerProvider.notifier).previousPage),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Let\'s start with a genre',
              style: theme.textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: ref.watch(movieFlowControllerProvider).genres.when(
                    data: (genres) {
                      return ListView.separated(
                          padding: const EdgeInsets.symmetric(
                              vertical: kListItemSpacing),
                          itemBuilder: (context, index) {
                            final genre = genres[index];
                            return ListCard(
                                genre: genre,
                                onTap: () => ref
                                    .read(movieFlowControllerProvider.notifier)
                                    .toggleSelected(genre));
                          },
                          separatorBuilder: ((context, index) {
                            return const SizedBox(
                              height: kListItemSpacing,
                            );
                          }),
                          itemCount: genres.length);
                    },
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    error: (error, stackTrace) {
                      if (error is Failure) {
                        return FailureBody(message: error.message);
                      }
                      return const FailureBody(
                          message: 'Something went wrong on our end');
                    },
                  ),
            ),
            PrimaryButton(
              onPressed:
                  ref.read(movieFlowControllerProvider.notifier).nextPage,
              text: 'Continue',
            ),
            const SizedBox(
              height: kMediumSpacing,
            )
          ],
        ),
      ),
    );
  }
}
