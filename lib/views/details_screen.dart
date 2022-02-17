import 'package:flutter/material.dart';
import 'package:movie_ui/resources/class/item_popular.dart';
import 'package:movie_ui/resources/widgets/header_widget.dart';
import 'package:movie_ui/resources/widgets/list_cast.dart';
import 'package:movie_ui/resources/widgets/overview.dart';

class DetailsScreen extends StatelessWidget {
  final List<ItemPopular> listItemPopular;
  final int index;
  const DetailsScreen({Key? key, required this.listItemPopular, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.favorite_border),
          ),
        ],
      ),
      body: Stack(
        children: [
          Image.asset(
            listItemPopular[index].backgroundImg,
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white.withOpacity(0.8),
          ),
          ListView(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            children: [
              const SizedBox(height: 20,),
              // Header
              Header(item: listItemPopular[index],),
              const SizedBox(height: 20,),
              // List Cast
              ListCast(listItemCast: listItemPopular[index].listItemCast,),
              const SizedBox(height: 20,),
              //Overview
              OverView(item: listItemPopular[index],),
            ],
          )
        ],
      )
    );
  }
}
