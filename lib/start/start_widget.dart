import 'package:flutter/material.dart';
import 'package:medkit/start/start_page_widget.dart';
import 'package:medkit/theme/theme_color.dart';

class StartWidget extends StatelessWidget {
  const StartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.backgroundTheme,
      appBar: AppBar(),
      body: const StartPageWidget(),
    );
  }
}
