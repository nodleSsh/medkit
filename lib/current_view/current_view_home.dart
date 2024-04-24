import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medkit/home/current_medications_bloc/current_bloc_list.dart';
import 'package:medkit/resources/resources.dart';
import 'package:medkit/start/button.dart';
import 'package:medkit/theme/theme_color.dart';

class CurrentViewHome extends StatefulWidget {
  const CurrentViewHome({super.key});

  @override
  State<CurrentViewHome> createState() => _CurrentViewHomeState();
}

class _CurrentViewHomeState extends State<CurrentViewHome> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: ThemeColor.backgroundTheme,
          child: CustomScrollView(
            slivers: <Widget>[
              SliverPadding(
                padding: const EdgeInsets.all(20),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(
                    <Widget>[
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CurrentBlocList(
                            image: AppImages.tabs,
                            name: 'Paracethamol',
                          ),
                          CurrentBlocList(
                            image: AppImages.tabsbl,
                            name: 'Paracethamol',
                          ),
                          CurrentBlocList(
                            image: AppImages.tabs,
                            name: 'Paracethamol',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 100,
                            height: 120,
                            decoration: BoxDecoration(
                              // color: Colors.white,
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 202, 202, 202),
                                  width: 2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add,
                                  size: 30,
                                  color: Color.fromARGB(255, 87, 87, 87),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const Button(path: '/', text: 'Ask for prescription'),
      ],
    );
  }
}
