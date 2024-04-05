import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medkit/home/appbar_med_kit_widget.dart';
import 'package:medkit/home/body_med_kit_widget.dart';
import 'package:medkit/theme/theme_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const AppBarMedKitWidget(),
      ),
      body: const BodyMedKitWidget(),
      backgroundColor: ThemeColor.backgroundTheme,
    );
  }
}
