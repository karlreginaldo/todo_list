import 'package:TodoList/assets/colors/colors.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlurryContainer(
      width: double.infinity,
      padding: EdgeInsets.all(5),
      height: MediaQuery.of(context).size.height * .50,
      borderRadius: BorderRadius.circular(50),
      bgColor: gridViewColor,
      child: Center(
        child: GridViewContent(),
      ),
    );
  }
}

class GridViewContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(100, (index) {
        return Center(
          child: Text(
            'Item $index',
            style: Theme.of(context).textTheme.headline5,
          ),
        );
      }),
    );
  }
}
