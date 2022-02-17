import 'item_cast.dart';

class ItemPopular {
  String name;
  String urlPhoto;
  String backgroundImg;
  String releaseDate;
  String overview;
  String typeMovie;
  List<ItemCast> listItemCast;

  ItemPopular({required this.name,
    required this.urlPhoto,
    required this.backgroundImg,
    required this.releaseDate,
    required this.overview,
    required this.typeMovie,
    required this.listItemCast
  });
}