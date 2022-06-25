import 'package:flutter/material.dart';

extension ColorSchemeExtension on ColorScheme {
  Color get numberButton => brightness == Brightness.light
      ? const Color.fromARGB(255, 190, 190, 190)
      : const Color.fromARGB(255, 30, 30, 30);
}
