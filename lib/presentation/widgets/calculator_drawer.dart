import 'package:flutter/material.dart';
import 'package:flutter_calculator/core/enums.dart';

class CalculatorDrawer extends StatelessWidget {
  final String activeType;
  const CalculatorDrawer(this.activeType, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const ListTile(title: Text("Calculator")),
          ListTile(
            leading: const Icon(Icons.calculate),
            selected: activeType == CalculatorType.standard,
            selectedTileColor: Colors.grey,
            hoverColor: Colors.grey,
            onTap: () {
              if (activeType == CalculatorType.standard) {
                Navigator.of(context).pop();
              } else {}
            },
            title: const Text(CalculatorType.standard),
          ),
          ListTile(
            leading: const Icon(Icons.calculate),
            selected: activeType == CalculatorType.scientific,
            selectedTileColor: Colors.grey,
            hoverColor: Colors.grey,
            onTap: () {
              if (activeType == CalculatorType.scientific) {
                Navigator.of(context).pop();
              } else {}
            },
            title: const Text(CalculatorType.scientific),
          ),
        ],
      ),
    );
  }
}
