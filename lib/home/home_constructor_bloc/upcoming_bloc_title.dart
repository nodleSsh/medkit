import 'package:flutter/material.dart';
import 'package:medkit/theme/theme_color.dart';

class UpcomingBlocTitle extends StatefulWidget {
  final String upcomingTitleName;
  final String path;
  const UpcomingBlocTitle(
      {required this.upcomingTitleName, required this.path, super.key});

  @override
  State<UpcomingBlocTitle> createState() => _UpcomingBlocTitleState();
}

class _UpcomingBlocTitleState extends State<UpcomingBlocTitle> {
  void _openViewNotes() {
    Navigator.of(context).pushReplacementNamed(widget.path);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.upcomingTitleName,
            style: ThemeColor.titleColorBloc,
          ),
          TextButton(
            onPressed: _openViewNotes,
            child: const Text(
              'View all',
              style: ThemeColor.buttonBloc,
            ),
          ),
        ],
      ),
    );
  }
}
