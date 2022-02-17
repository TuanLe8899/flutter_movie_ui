import 'package:flutter/material.dart';
import 'package:movie_ui/resources/class/item_popular.dart';
import 'package:movie_ui/views/home_screen.dart';

class ItemPopularWidget extends StatelessWidget {
  final ItemPopular item;
  final onTap;
  const ItemPopularWidget({Key? key, this.onTap, required this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          // Image
          Expanded(
            flex: 8,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(item.urlPhoto),
                      )
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(18),
                              bottomRight: Radius.circular(18)),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.black.withOpacity(0),
                              Colors.black.withOpacity(1)
                            ],
                          )
                      ),
                    )
                ),
                Positioned(
                  right: 20,
                  bottom: 10,
                  child: Text(
                    item.releaseDate,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
                child: Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ))
        ],
      ),
    );
  }
}
