import 'package:flutter/material.dart';
import 'package:flutter_calculator/core/colors.dart';
import 'package:flutter_calculator/core/enums.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/providers/calculator_provider.dart';

class Button extends ConsumerWidget {
  static const _defaultTextColor = Colors.white;

  final Color? textColor;
  final String text;
  final Widget icon;
  final int buttonType;
  final void Function()? buttontapped;

  const Button({
    this.textColor = _defaultTextColor,
    this.text = "",
    this.icon = const SizedBox.shrink(),
    this.buttonType = ButtonType.number,
    this.buttontapped,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final content = Text.rich(
      TextSpan(children: [
        WidgetSpan(child: icon),
        TextSpan(
          text: text,
          style: TextStyle(
            color: textColor,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ]),
    );

    return GestureDetector(
      onTap: () => ref.read(calculatorProvider.notifier).numberPressed(text),
      child: Padding(
        padding: const EdgeInsets.all(0.2),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Container(
            constraints: const BoxConstraints(maxHeight: 20, maxWidth: 20),
            color: getColor(context, buttonType),
            child: Center(
              child: content,
            ),
          ),
        ),
      ),
    );
  }

  Color getColor(BuildContext context, int buttonType) {
    switch (buttonType) {
      case ButtonType.number:
        return Theme.of(context).colorScheme.numberButton;
      default:
        return Colors.transparent;
    }
  }
}
