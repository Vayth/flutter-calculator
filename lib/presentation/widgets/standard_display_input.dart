import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/providers/calculator_provider.dart';

class StandardDisplayInput extends ConsumerWidget {
  const StandardDisplayInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(calculatorProvider);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: state.when(
        (String value) => Align(alignment: Alignment.centerRight,
          child: Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        loading: () => Container(),
        error: (error) => Container(),
      ),
    );
  }
}
