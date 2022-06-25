import 'package:flutter/material.dart';
import 'package:flutter_calculator/presentation/widgets/standard_display_input.dart';
import 'package:flutter_calculator/presentation/widgets/standard_display_result.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StandardDisplay extends ConsumerWidget {
  const StandardDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: const [
        StandardDisplayInput(),
        StandardDisplayResult(),
      ],
    );
  }
}
