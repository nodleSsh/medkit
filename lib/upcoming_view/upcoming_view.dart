import 'package:flutter/material.dart';
import 'package:medkit/resources/resources.dart';
import 'package:medkit/theme/theme_color.dart';
import 'package:medkit/upcoming_view/upcoming_view_home.dart';

class UpcomingView extends StatelessWidget {
  const UpcomingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/upcoming_view');
            },
            icon: const Icon(
              Icons.keyboard_arrow_left,
            ),
          );
        }),
        title: const Text(
          'Your appointments',
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
      body: const UpcomingViewHome(),
    );
  }
}
