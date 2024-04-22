import 'package:flutter/material.dart';
import 'package:medkit/current_view/current_view.dart';
import 'package:medkit/find_view/find_view.dart';
import 'package:medkit/home/home_page.dart';
import 'package:medkit/profile/user_profile.dart';
import 'package:medkit/start/start_widget.dart';
import 'package:medkit/theme/theme_color.dart';
import 'package:medkit/upcoming_view/upcoming_view.dart';

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
      debugShowCheckedModeBanner: false,
      routes: {
        '/start': (context) => const StartWidget(),
        '/home': (context) => const HomePage(),
        '/profile': (context) => const UserProfile(),
        '/upcoming': (context) => const UpcomingView(),
        '/current': (context) => const CurrentView(),
        '/find': (context) => const FindView(),
      },
      initialRoute: '/start',
    );
  }
}
