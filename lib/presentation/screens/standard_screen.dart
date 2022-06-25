import 'package:flutter/material.dart';
import 'package:flutter_calculator/core/enums.dart';
import 'package:flutter_calculator/presentation/widgets/calculator_drawer.dart';
import 'package:flutter_calculator/presentation/widgets/standard_buttons.dart';
import 'package:flutter_calculator/presentation/widgets/standard_display.dart';

class StandardScreen extends StatelessWidget {
  const StandardScreen({Key? key}) : super(key: key);

  static const String _title = "Standard";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_title),
        actions: [
          IconButton(
            icon: const Icon(Icons.history),
            onPressed: () {},
          )
        ],
      ),
      drawer: const CalculatorDrawer(CalculatorType.standard),
      body: Column(children: const [
        StandardDisplay(),
        StandardButtons(),
      ]),
    );
  }
}
