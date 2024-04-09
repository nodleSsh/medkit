import 'package:flutter/material.dart';
import 'package:medkit/home/home_constructor_bloc/upcoming_bloc_title.dart';

class Currentbloc extends StatefulWidget {
  const Currentbloc({super.key});

  @override
  State<Currentbloc> createState() => _CurrentblocState();
}

class _CurrentblocState extends State<Currentbloc> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UpcomingBlocTitle(
          upcomingTitleName: 'Current medications',
        )
      ],
    );
  }
}
