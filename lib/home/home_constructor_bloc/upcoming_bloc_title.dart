import 'package:flutter/material.dart';
import 'package:medkit/theme/theme_color.dart';

class UpcomingBlocTitle extends StatelessWidget {
  final String upcomingTitleName;
  const UpcomingBlocTitle({required this.upcomingTitleName, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            upcomingTitleName,
            style: ThemeColor.titleColorBloc,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'View all',
              style: ThemeColor.buttonBloc,
            ),
          ),
        ],
      ),
    );
  }
}
