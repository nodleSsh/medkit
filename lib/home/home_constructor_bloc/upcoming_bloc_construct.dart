import 'package:flutter/material.dart';
import 'package:medkit/resources/resources.dart';
import 'package:medkit/theme/theme_color.dart';

class UpcomingBlocConstruct extends StatefulWidget {
  const UpcomingBlocConstruct({super.key});

  @override
  State<UpcomingBlocConstruct> createState() => _UpcomingBlocConstructState();
}

class _UpcomingBlocConstructState extends State<UpcomingBlocConstruct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Image(
              image: AssetImage(AppImages.stethoscope),
            ),
            const Text(
              'General check-up',
              style: ThemeColor.connstrucTitle,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 167, 182, 224),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Padding(
                padding: EdgeInsets.only(
                  top: 5,
                  bottom: 5,
                  left: 10,
                  right: 10,
                ),
                child: Text(
                  'Aug 12',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                    color: ThemeColor.colorText,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
