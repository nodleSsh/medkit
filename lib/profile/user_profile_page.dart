import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:medkit/profile/user_list.dart';
import 'package:medkit/resources/resources.dart';
import 'package:medkit/theme/theme_color.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ThemeColor.backgroundTheme,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(10),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Center(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: SizedBox.fromSize(
                                size: const Size.fromRadius(70),
                                child: const Image(
                                  image: AssetImage(AppImages.avatar),
                                ),
                              ),
                            ),
                            const Text('Homer Simpson'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: const Text('47 years old'),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  child: const Text('Male'),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: const UserList(),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Emergency contact'),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  TextButton(
                                    style: TextButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        )),
                                    onPressed: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10,
                                          bottom: 10,
                                          left: 15,
                                          right: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: const Text('1'),
                                          ),
                                          const Text('Mother'),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),