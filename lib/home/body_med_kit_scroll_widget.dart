import 'package:flutter/material.dart';
import 'package:medkit/home/home_constructor_bloc/upcoming_bloc.dart';
import 'package:medkit/theme/theme_color.dart';

class BodyMedKitScrollWidget extends StatefulWidget {
  const BodyMedKitScrollWidget({super.key});

  @override
  State<BodyMedKitScrollWidget> createState() => _BodyMedKitScrollWidgetState();
}

class _BodyMedKitScrollWidgetState extends State<BodyMedKitScrollWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ThemeColor.backgroundTheme,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  const UpcomingBloc(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
