import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medkit/resources/resources.dart';

class CurrentBlocList extends StatefulWidget {
  final String image;
  final String name;
  const CurrentBlocList({required this.image, required this.name, super.key});

  @override
  State<CurrentBlocList> createState() => _CurrentBlocListState();
}

class _CurrentBlocListState extends State<CurrentBlocList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 10, right: 10, left: 10),
                child: Column(
                  children: [
                    Image(
                      image: AssetImage(widget.image),
                    ),
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Align(
                    child: Flexible(
                      child: Text.rich(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        TextSpan(
                          text: widget.name,
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 105, 105, 105),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
