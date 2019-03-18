import 'dart:core';

class Character {
  final String name;
  final String description;
  final String zodiac;
  final String element;
  final int stars;
  final String type;
  final String picture;

  Character({this.name, this.description, this.zodiac, this.element, this.stars, this.type, this.picture, });

  Character.fromJson(Map<dynamic, dynamic> json)
    :name = json['name'],
    description = json['description'],
    zodiac = json['zodiac'],
    element = json['element'],
    stars = json['stars'],
    type = json['type'],
    picture = json['picture']
  ;

  @override
  String toString() {
    return 'Character{name: $name, description: $description, zodiac: $zodiac, element: $element, stars: $stars, type: $type}';
  }


}