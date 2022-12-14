import 'dart:convert';

import 'package:velocity_x/velocity_x.dart';

class CatalogModel {
  static List<Item> items = <Item>[];
  // get item by id
  Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);
  // get item by position
  Item getByPos(int pos) => items[pos];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }
  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}

// String toJson() => json.encode(toMap());
//
// factory Item.fromJson(String source) => Item.fromMap(json.decode(source));
//
// @override
// String toString() {
//   return 'Item(id: $id, name: $name, desc: $desc, price: $price, color: $color, image: $image)';
// }
//
// @override
// bool operator ==(Object o) {
// if (identical(this, o)) return true;
//
// return o is Item &&
// o.id == id &&
// o.name == name &&
// o.desc == desc &&
// o.price == price &&
// o.color == color &&
// o.image == image;
// }
//
// @override
// int get hashCode {
//   return id.hashCode ^
//   name.hashCode ^
//   desc.hashCode ^
//   price.hashCode ^
//   color.hashCode ^
//   image.hashCode;
// }
// }
