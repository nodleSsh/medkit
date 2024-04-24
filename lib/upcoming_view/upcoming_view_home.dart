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
    return Stack(
      children: [
        Container(
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
        ),
        Align(
          //не забыть оптимизировать эту кнопку
          alignment: Alignment.bottomCenter,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(right: 15, left: 15, bottom: 10),
              child: Container(
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 19, 24, 49),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Book new appointment',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
