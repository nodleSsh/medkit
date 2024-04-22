import 'package:flutter/material.dart';
import 'package:medkit/profile/user_profile_page.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
      ),
      body: const UserProfilePage(),
    );
  }
}

class Navi extends StatelessWidget {
  const Navi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
