import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medkit/resources/resources.dart';
import 'package:medkit/theme/theme_color.dart';

class AppBarMedKitWidget extends StatefulWidget {
  const AppBarMedKitWidget({super.key});

  @override
  State<AppBarMedKitWidget> createState() => _AppBarMedKitWidgetState();
}

class _AppBarMedKitWidgetState extends State<AppBarMedKitWidget> {
  void _openProfileUser() {
    Navigator.of(context).pushReplacementNamed('/profile');
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: const TextSpan(
                    text: 'Med',
                    style: ThemeColor.styleLogoOne,
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Kit',
                        style: ThemeColor.styleLogoTwo,
                      )
                    ]),
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
              onPressed: _openProfileUser,
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
