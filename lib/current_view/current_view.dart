import 'package:flutter/material.dart';
import 'package:medkit/current_view/current_view_home.dart';
import 'package:medkit/resources/resources.dart';
import 'package:medkit/theme/theme_color.dart';

class CurrentView extends StatelessWidget {
  const CurrentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/upcoming_view');
              },
              icon: const Icon(
                Icons.keyboard_arrow_left,
              ),
            );
          },
        ),
        title: const Text(
          'My medications',
          style: ThemeColor.viewTitleStyle,
        ),
        actions: <Widget>[
          SizedBox(
            width: 60,
            height: 60,
            child: IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(AppImages.avatar),
              ),
            ),
          ),
        ],
      ),
      body: const CurrentViewHome(),
    );
  }
}
