import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medkit/resources/resources.dart';
import 'package:medkit/theme/theme_color.dart';

class AppBarMedKitWidget extends StatelessWidget {
  const AppBarMedKitWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          flex: 5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Med',
                style: ThemeColor.styleLogoOne,
              ),
              Text(
                'Kit',
                style: ThemeColor.styleLogoTwo,
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: SizedBox(
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
        ),
      ],
    );
  }
}
