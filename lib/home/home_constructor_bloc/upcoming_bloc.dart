import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medkit/resources/resources.dart';
import 'package:medkit/theme/theme_color.dart';

class InfomakeAnAppointment {
  final String icon;
  final String infoname;
  final String infoDate;
  InfomakeAnAppointment(
      {required this.icon, required this.infoDate, required this.infoname});
}

class UpcomingBloc extends StatefulWidget {
  const UpcomingBloc({super.key});

  @override
  State<UpcomingBloc> createState() => _UpcomingBlocState();
}

class _UpcomingBlocState extends State<UpcomingBloc> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Upcoming appointments',
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
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Image(
                  image: AssetImage(AppImages.stethoscope),
                ),
                const Text(
                  'General check-up',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 19, 24, 49),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 140, 155, 196),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                      bottom: 5,
                      left: 10,
                      right: 10,
                    ),
                    child: const Text(
                      'Aug 12',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
