// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/core/constants.dart';
import 'package:movie_app/core/widgets/primary_button.dart';
import 'package:movie_app/features/movie_flow/movie_flow_controller.dart';
import 'package:movie_app/features/movie_flow/result/result_screen.dart';

class YearsBackScreen extends ConsumerWidget {
  const YearsBackScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed:
              ref.read(movieFlowControllerProvider.notifier).previousPage,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'How many years back should we check?',
              style: theme.textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${ref.watch(movieFlowControllerProvider).yearsBack.ceil()}',
                  style: theme.textTheme.headlineMedium,
                ),
                Text(
                  'Years back',
                  style: theme.textTheme.headlineMedium?.copyWith(
                    color: theme.textTheme.headlineMedium?.color
                        ?.withOpacity(0.62),
                  ),
                )
              ],
            ),
            const Spacer(),
            Slider(
                value:
                    ref.watch(movieFlowControllerProvider).yearsBack.toDouble(),
                min: 0,
                max: 70,
                divisions: 70,
                label:
                    '${ref.watch(movieFlowControllerProvider).yearsBack.ceil()}',
                onChanged: (newYearsBack) {
                  ref
                      .read(movieFlowControllerProvider.notifier)
                      .updateYearsBack(newYearsBack.toInt());
                }),
            const Spacer(),
            PrimaryButton(
                onPressed: () async {
                  await ref
                      .read(movieFlowControllerProvider.notifier)
                      .getRecommandedMovie();
                  Navigator.of(context).push(ResultScreen.route());
                },
                isLoading: ref.watch(movieFlowControllerProvider).movie
                    is AsyncLoading,
                text: 'Let\'s go!'),
            const SizedBox(
              height: kMediumSpacing,
            )
          ],
        ),
      ),
    );
  }
}
