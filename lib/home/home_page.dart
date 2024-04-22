import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medkit/home/appbar_med_kit_widget.dart';
import 'package:medkit/home/body_med_kit_widget.dart';
import 'package:medkit/menu/menu_list.dart';
import 'package:medkit/theme/theme_color.dart';

class listMenuData {
  final String name;
  listMenuData({required this.name});
}

final listData = [
  listMenuData(name: 'Profile'),
  listMenuData(name: 'Upcoming appointments'),
  listMenuData(name: 'Current medications'),
  listMenuData(name: 'Find your doctor'),
  listMenuData(name: 'Contacts'),
  listMenuData(name: ''),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 0, right: 15, left: 15, bottom: 0),
          child: Column(
            children: [
              const MenuList(),
              Expanded(
                child: SizedBox(
                  height: 300,
                  child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                    itemCount: listData.length,
                    itemBuilder: (BuildContext context, int index) {
                      final listMenu = listData[index];
                      return ListTile(
                        onTap: () {},
                        title: Text(
                          listMenu.name,
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: ThemeColor.colorText,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const AppBarMedKitWidget(),
      ),
      body: const BodyMedKitWidget(),
      backgroundColor: ThemeColor.backgroundTheme,
    );
  }
}
