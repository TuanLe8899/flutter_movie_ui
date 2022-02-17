import 'dart:core';

import 'package:flutter/material.dart';
import 'package:movie_ui/resources/datas.dart';
import 'package:movie_ui/resources/widgets/popular_view.dart';
import 'package:movie_ui/resources/widgets/tab_bar_scroll.dart';
import 'package:movie_ui/resources/widgets/tab_bar_view_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController? _controllerTabBar;
  List<Widget> tabBarsChildScroll = const [
    Text('Popular'),
    Text('Now Playing'),
    Text('Up Coming'),
    Text('Top Rate'),
  ];
  TabController? _controllerTabBarView;
  List<Widget> tabBarsChildViewList = [
    PopularView(listItemPopular: listItemPopular,),
    Container(color: Colors.blue,),
    Container(color: Colors.red,),
    Container(color: Colors.orange,),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controllerTabBar = TabController(vsync: this, length: tabBarsChildScroll.length);
    _controllerTabBarView = TabController(vsync: this, length: tabBarsChildViewList.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              // Vertical Tab bar
              TabBarScroll(
                controller: _controllerTabBar,
                tabBarsChildScroll: tabBarsChildScroll,
              ),
              // List Item
              TabBarViewList(
                controller: _controllerTabBarView,
                tabBarsChildViewList: tabBarsChildViewList,
              ),
            ],
          ),
        ),
      )
    );
  }
}