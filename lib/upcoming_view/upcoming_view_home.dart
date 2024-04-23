import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medkit/resources/resources.dart';
import 'package:medkit/theme/theme_color.dart';
import 'package:medkit/upcoming_view/upcoming_view_list.dart';

class UpcomingViewHome extends StatefulWidget {
  const UpcomingViewHome({super.key});

  @override
  State<UpcomingViewHome> createState() => _UpcomingViewHomeState();
}

class _UpcomingViewHomeState extends State<UpcomingViewHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ThemeColor.backgroundTheme,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(5),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  const UpcomingViewList(
                    image: AppImages.stethoscope,
                    name: 'General check-up',
                    doctorName: 'Phil',
                    communication: 'Video appointments',
                    icon: Icons.videocam,
                    date: 'Aug 12',
                  ),
                  const UpcomingViewList(
                    image: AppImages.stethoscope,
                    name: 'Cardiologist check-up',
                    doctorName: 'Marta',
                    communication: 'Chat appointments',
                    icon: Icons.chat_bubble,
                    date: 'Aug 28',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
