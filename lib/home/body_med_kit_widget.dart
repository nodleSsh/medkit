import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:medkit/theme/theme_color.dart';

class BodyMedKitWidget extends StatefulWidget {
  const BodyMedKitWidget({super.key});

  @override
  State<BodyMedKitWidget> createState() => _BodyMedKitWidgetState();
}

class _BodyMedKitWidgetState extends State<BodyMedKitWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Container(
            child: TextField(
              style: ThemeColor.homeTextStyle,
              maxLength: 100,
              maxLines: 1,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: 'Search doctors, appointments...',
                hintStyle: ThemeColor.homeTextStyle,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: const Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 105, 105, 105),
                  size: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
