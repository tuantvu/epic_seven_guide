import 'package:epic_seven_guide/models/characters/character.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:yaml/yaml.dart';
import 'dart:async';

class CharacterModel {
  static Map<String, Character> characters = new Map();

  static Future<Null> load() async {
    String contents = await rootBundle.loadString('lib/models/characters/charList.yaml');
    var yaml = loadYaml(contents);
    for (var charYaml in yaml) {
      print("charYaml: $charYaml");
      Character newCharacter = Character.fromJson(charYaml);
      print("char: $newCharacter");
      characters.putIfAbsent(newCharacter.name, () => newCharacter);
      print("characters: $characters");
    }

  }
}