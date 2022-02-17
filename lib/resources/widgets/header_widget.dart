import 'package:flutter/material.dart';
import 'package:movie_ui/resources/class/item_popular.dart';

class Header extends StatelessWidget {
  final ItemPopular item;
  const Header({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 1,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset(
                    item.urlPhoto,
                    fit: BoxFit.cover,
                  ))),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.only(left: 15.0),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Text(
                    item.name,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                  const SizedBox(height: 15.0,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Xuất bản :   ',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                      Expanded(
                        child: Text(
                          item.releaseDate,
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 15.0,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Thể loại :  ',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                      Expanded(
                        child: Text(
                        item.typeMovie,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                      ))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
