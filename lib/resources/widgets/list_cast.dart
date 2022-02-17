import 'package:flutter/material.dart';
import 'package:movie_ui/resources/class/item_cast.dart';
import 'package:movie_ui/resources/widgets/item_cast_widget.dart';

class ListCast extends StatelessWidget {
  final List<ItemCast> listItemCast;
  const ListCast({Key? key, required this.listItemCast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Cast', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
          const SizedBox(height: 12.0,),
          Container(
            height: 160,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: listItemCast.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ItemCastWidget(
                    itemCast: listItemCast[index],
                );
              }
            ),
          )
        ],
      ),
    );
  }
}
