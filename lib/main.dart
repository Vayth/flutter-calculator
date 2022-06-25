import 'package:flutter/material.dart';
import 'package:flutter_calculator/presentation/screens/standard_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(colorScheme: const ColorScheme.dark(primary: Colors.white)),
      themeMode: ThemeMode.dark,
      home: const StandardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
