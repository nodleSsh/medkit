import 'package:flutter/material.dart';
import 'package:medkit/resources/resources.dart';
import 'package:medkit/theme/theme_color.dart';

class UpcomingViewList extends StatefulWidget {
  const UpcomingViewList({super.key});

  @override
  State<UpcomingViewList> createState() => _UpcomingViewListState();
}

class _UpcomingViewListState extends State<UpcomingViewList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ThemeColor.backgroundTheme,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage(AppImages.stethoscope),
                    ),
                    Column(
                      children: [
                        Text('General check-up'),
                        Text('Dr.Phil'),
                        Row(
                          children: [
                            Icon(Icons.missed_video_call_rounded),
                            Text('Video appointments'),
                          ],
                        ),
                      ],
                    ),
                    Text('Aug 12'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
