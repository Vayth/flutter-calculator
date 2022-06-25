import 'package:flutter/material.dart';

import 'button.dart';

class StandardButtons extends StatelessWidget {
  const StandardButtons({Key? key}) : super(key: key);

  static const List<Button> buttons = [
    Button(text: "%"),
    Button(text: "CE"),
    Button(text: "C"),
    Button(icon: Icon(Icons.backspace)),
    Button(text: "1/x"),
    Button(text: "x^2"),
    Button(text: "sqrt(x)"),
    Button(text: "/"),
    Button(text: "7"),
    Button(text: "8"),
    Button(text: "9"),
    Button(text: "x"),
    Button(text: "4"),
    Button(text: "5"),
    Button(text: "6"),
    Button(text: "-"),
    Button(text: "1"),
    Button(text: "2"),
    Button(text: "3"),
    Button(text: "+"),
    Button(text: "+/-"),
    Button(text: "0"),
    Button(text: "."),
    Button(text: "="),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return GridView.builder(
            itemCount: buttons.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisExtent: constraints.maxHeight / 6,
            ),
            itemBuilder: (BuildContext context, int index) {
              return buttons[index];
            },
          ); // GridView.builder
        },
      ),
    );
  }
}
