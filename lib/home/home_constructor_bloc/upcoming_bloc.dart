import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medkit/home/home_constructor_bloc/upcoming_bloc_construct.dart';
import 'package:medkit/home/home_constructor_bloc/upcoming_bloc_title.dart';

class UpcomingBloc extends StatefulWidget {
  const UpcomingBloc({super.key});

  @override
  State<UpcomingBloc> createState() => _UpcomingBlocState();
}

class _UpcomingBlocState extends State<UpcomingBloc> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UpcomingBlocTitle(upcomingTitleName: 'Upcoming appointments'),
        SizedBox(
          height: 10,
        ),
        UpcomingBlocConstruct(),
        SizedBox(
          height: 10,
        ),
        UpcomingBlocConstruct(),
      ],
    );
  }
}
