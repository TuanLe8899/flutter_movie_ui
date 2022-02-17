import 'package:flutter/material.dart';

class TabBarScroll extends StatelessWidget {
  final controller;
  final List<Widget> tabBarsChildScroll;
  const TabBarScroll({Key? key, required this.controller, required this.tabBarsChildScroll}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80, left: 25),
      child: TabBar(
        controller: controller,
        labelStyle: const TextStyle(
        fontFamily: 'Comfortaa', fontSize: 24,
      ),
      tabs: tabBarsChildScroll,
      indicatorColor: Colors.black,
      indicatorPadding: const EdgeInsets.symmetric(horizontal: 10),
      labelPadding: const EdgeInsets.symmetric(horizontal: 13, vertical: 2),
      labelColor: Colors.black,
      unselectedLabelColor: Colors.black.withOpacity(0.5),
      isScrollable: true,
      ),
    );
  }
}
