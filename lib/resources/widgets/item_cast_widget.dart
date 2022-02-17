import 'package:flutter/material.dart';
import 'package:movie_ui/resources/class/item_cast.dart';

class ItemCastWidget extends StatelessWidget {
  final ItemCast itemCast;
  const ItemCastWidget({Key? key, required this.itemCast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12.0),
      child: Column(
        children: [
          // Image
          Expanded(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  itemCast.urlPhoto,
                  fit: BoxFit.cover,
                  width: 85,
                  height: 180,
                ))),
          const SizedBox(height: 3.0,),
          Text(itemCast.name, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 3.0,),
          Text(itemCast.character, style: const TextStyle(fontSize: 13),),
        ],
      )
    );
  }
}
