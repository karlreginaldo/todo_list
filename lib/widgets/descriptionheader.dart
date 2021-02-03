import 'package:TodoList/assets/fonts/fonts.dart';
import 'package:flutter/material.dart';

class DescriptionHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hey Karl,',
          style: titleFont(fontSize: 36, color: Colors.white),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          '''Do you want to plan a trip, meeting or party? Let me help you!''',
          style: bodyFont(fontSize: 24, color: Colors.white),
        ),
      ],
    );
  }
}
