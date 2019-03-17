import 'package:epic_seven_guide/models/characters/character.dart';
import 'package:epic_seven_guide/pages/characters/characters_home_list_item.dart';
import 'package:epic_seven_guide/widgets/CommonScaffold.dart';
import 'package:flutter/material.dart';

///Lists all characters by dynamically reading from characters data folder
///Allows filtering and sorting
class CharactersHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return CharactersHomeListItem(
            character: Character(name: "Tammy", element: "Fire"),
          );
        },
      ),
    );
  }
}