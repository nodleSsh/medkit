import 'package:flutter/material.dart';
import 'package:medkit/resources/resources.dart';
import 'package:medkit/theme/theme_color.dart';

class MenuList extends StatelessWidget {
  const MenuList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 70,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: SizedBox.fromSize(
            size: const Size.fromRadius(50),
            child: const Image(
              image: AssetImage(AppImages.avatar),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Homer Simpson',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: ThemeColor.colorText,
          ),
        ),
      ],
    );
  }
}
