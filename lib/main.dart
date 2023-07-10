import 'package:flutter/material.dart';
import 'package:test_flutter/core/notifiers.dart';
import 'package:test_flutter/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // access to change theme
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, value, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: value ? Brightness.dark : Brightness.light,
            useMaterial3: true,
          ),
          home: const WidgetTree(),
        );
      },
    );
  }
}
