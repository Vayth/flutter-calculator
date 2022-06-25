import 'package:flutter_calculator/presentation/states/standard_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final calculatorProvider =
    StateNotifierProvider<CalculatorProvider, StandardState>(((ref) => CalculatorProvider()));

class CalculatorProvider extends StateNotifier<StandardState> {
  CalculatorProvider() : super(const StandardState(""));

  void numberPressed(String value) {
    String exp = state.maybeWhen(
      (value) => value,
      orElse: () => '',
    );
    state = StandardState("$exp$value");
  }
}
