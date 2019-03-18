import 'package:epic_seven_guide/models/characters/character.dart';
import 'package:epic_seven_guide/models/characters/character_model.dart';
import 'package:epic_seven_guide/pages/characters/characters_home_list_item.dart';
import 'package:epic_seven_guide/widgets/CommonScaffold.dart';
import 'package:flutter/material.dart';

///Lists all characters by dynamically reading from characters data folder
///Allows filtering and sorting
class CharactersHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Character> characters = CharacterModel.characters.values.toList();
    return CommonScaffold(
      body: ListView.builder(
        itemCount: characters.length,
        itemBuilder: (BuildContext context, int index) {
          return CharactersHomeListItem(
            character: characters.elementAt(index),
          );
        },
      ),
    );
  }
}