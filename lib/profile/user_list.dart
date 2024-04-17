import 'package:flutter/material.dart';
import 'package:medkit/theme/theme_color.dart';

class UserProfileData {
  final String naming;
  final String value;
  UserProfileData({required this.naming, required this.value});
}

final _listUserData = [
  UserProfileData(naming: 'Blood type', value: '0+'),
  UserProfileData(naming: 'Weight', value: '78 kg'),
  UserProfileData(naming: 'Height', value: '182 cm'),
  UserProfileData(naming: 'Allergies', value: 'Shellfish, fruit'),
];

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        primary: false,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          final userInfo = _listUserData[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userInfo.naming,
                style: const TextStyle(
                  color: Color.fromARGB(255, 105, 105, 105),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                userInfo.value,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: ThemeColor.colorText,
                ),
              ),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: _listUserData.length,
      ),
    );
  }
}
