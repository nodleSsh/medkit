import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medkit/resources/resources.dart';
import 'package:medkit/theme/theme_color.dart';

class UpcomingViewList extends StatefulWidget {
  final String image;
  final String name;
  final String doctorName;
  final String communication;
  final IconData icon;
  final String date;
  const UpcomingViewList(
      {required this.image,
      required this.name,
      required this.doctorName,
      required this.communication,
      required this.icon,
      required this.date,
      super.key});

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
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage(widget.image),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          child: Text.rich(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            TextSpan(
                              text: widget.name,
                              style: const TextStyle(
                                fontSize: 17,
                                color: ThemeColor.colorText,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Dr.${widget.doctorName}',
                          style: ThemeColor.buttonBloc,
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(
                                widget.icon,
                                size: 17,
                                color: ThemeColor.elementStyle,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                widget.communication,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: ThemeColor.elementStyle,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 183, 198, 240),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                          bottom: 5,
                          left: 10,
                          right: 10,
                        ),
                        child: Text(
                          widget.date,
                          style: ThemeColor.upcomingButtonStyle,
                        ),
                      ),
                    ),
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
