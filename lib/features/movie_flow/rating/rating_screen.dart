// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/core/widgets/primary_button.dart';
import 'package:movie_app/features/movie_flow/movie_flow_controller.dart';

class RatingScreen extends ConsumerWidget {
  const RatingScreen({
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
              'Select a minimum rating\nrangig from 1-10',
              style: theme.textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${ref.watch(movieFlowControllerProvider).rating.ceil()}',
                  style: theme.textTheme.headlineLarge,
                ),
                const Icon(
                  Icons.star_rounded,
                  color: Colors.amber,
                  size: 62,
                ),
              ],
            ),
            const Spacer(),
            Slider(
                value: ref.watch(movieFlowControllerProvider).rating.toDouble(),
                min: 1,
                max: 10,
                divisions: 10,
                label:
                    '${ref.watch(movieFlowControllerProvider).rating.ceil()}',
                onChanged: (newRating) {
                  ref
                      .read(movieFlowControllerProvider.notifier)
                      .updateRating(newRating.toInt());
                }),
            const Spacer(),
            PrimaryButton(
              onPressed:
                  ref.read(movieFlowControllerProvider.notifier).nextPage,
              text: 'Yes!',
            ),
          ],
        ),
      ),
    );
  }
}
