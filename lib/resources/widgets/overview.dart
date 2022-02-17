import 'package:flutter/material.dart';
import 'package:movie_ui/resources/class/item_popular.dart';

class OverView extends StatelessWidget {
  final ItemPopular item;
  const OverView({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Overview',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15.0,),
          Text(
            item.overview,
            style: const TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}
