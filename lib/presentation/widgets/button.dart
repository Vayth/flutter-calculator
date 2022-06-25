import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/providers/calculator_provider.dart';

class Button extends ConsumerWidget {
  static const _defaultColor = Color.fromARGB(255, 30, 30, 30);
  static const _defaultTextColor = Colors.white;

  final Color? color;
  final Color? textColor;
  final String text;
  final Widget icon;
  final void Function()? buttontapped;

  const Button({
    this.color = _defaultColor,
    this.textColor = _defaultTextColor,
    this.text = "",
    this.icon = const SizedBox.shrink(),
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
            color: color,
            child: Center(
              child: content,
            ),
          ),
        ),
      ),
    );
  }
}
