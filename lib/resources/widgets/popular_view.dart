import 'package:flutter/material.dart';
import 'package:movie_ui/resources/class/item_popular.dart';
import 'package:movie_ui/resources/widgets/item_popular_widget.dart';
import 'package:movie_ui/views/details_screen.dart';

class PopularView extends StatefulWidget {
  final List<ItemPopular> listItemPopular;
  const PopularView({Key? key, required this.listItemPopular}) : super(key: key);

  @override
  _PopularViewState createState() => _PopularViewState();
}

class _PopularViewState extends State<PopularView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.62,
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 30,
      ),
      itemCount: widget.listItemPopular.length,
      itemBuilder: (content, index) {
        return ItemPopularWidget(
            item: widget.listItemPopular[index],
            onTap: () {
              var route = MaterialPageRoute(builder: (context)
                => DetailsScreen(
                  listItemPopular: widget.listItemPopular,
                  index: index,
                )
              );
              Navigator.push(context, route);
            }
        );
      }
    );
  }
}
