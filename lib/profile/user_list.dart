import 'package:flutter/material.dart';

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
  UserProfileData(naming: '', value: ''),
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
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          final userInfo = _listUserData[index];
          return Column(
            children: [
              Text(userInfo.naming),
              Text(userInfo.value),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: _listUserData.length,
      ),
    );
  }
}
