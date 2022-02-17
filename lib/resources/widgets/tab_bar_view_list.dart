import 'package:flutter/material.dart';

class TabBarViewList extends StatelessWidget {
  final controller;
  final List<Widget> tabBarsChildViewList;
  const TabBarViewList({Key? key, required this.controller, required this.tabBarsChildViewList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TabBarView(
          controller: controller,
          children: tabBarsChildViewList
        )
    );
  }
}
