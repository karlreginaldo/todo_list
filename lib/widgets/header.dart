import 'package:flutter/material.dart';

import 'appbarheader.dart';
import 'descriptionheader.dart';

class HeaderWidget extends StatelessWidget {
  final bool appBarOnly;
  HeaderWidget(this.appBarOnly);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          AppBarHeaderWidget(),
          SizedBox(
            height: 50,
          ),
          appBarOnly ? SizedBox() : DescriptionHeaderWidget(),
        ],
      ),
    );
  }
}
