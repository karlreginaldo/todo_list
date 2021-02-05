import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class AppBarHeaderWidget extends StatelessWidget {
  final FaIcon icon;
  AppBarHeaderWidget({this.icon});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: icon,
          onPressed: () {
            Get.back();
          },
        ),
        CircleAvatar(
          radius: 32,
          backgroundColor: Colors.black,
          child: CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/avatar.jpg',
            ),
            radius: 30,
          ),
        ),
      ],
    );
  }
}
