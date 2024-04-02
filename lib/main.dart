import 'package:flutter/material.dart';
import 'package:medkit/start/start_widget.dart';
import 'package:medkit/theme/theme_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: ThemeColor.backgroundTheme,
        ),
      ),
      routes: {
        '/start': (context) => const StartWidget(),
      },
      initialRoute: '/start',
    );
  }
}
