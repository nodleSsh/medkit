import 'package:flutter/material.dart';
import 'package:medkit/resources/resources.dart';
import 'package:medkit/start/button.dart';

class StartPageWidget extends StatefulWidget {
  const StartPageWidget({super.key});

  @override
  State<StartPageWidget> createState() => _StartPageWidgetState();
}

class _StartPageWidgetState extends State<StartPageWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Image(
                width: 230,
                height: 230,
                image: AssetImage(AppImages.med2),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Med',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 19, 24, 49),
                    ),
                  ),
                  Text(
                    'Kit',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 50,
                      color: Color.fromARGB(255, 19, 24, 49),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Button(
            path: '/home',
            text: 'Start',
          ),
        ],
      ),
    );
  }
}
