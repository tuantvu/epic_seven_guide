import 'package:epic_seven_guide/models/characters/character.dart';
import 'package:epic_seven_guide/pages/characters/character_details.dart';
import 'package:flutter/material.dart';

class CharactersHomeListItem extends StatelessWidget {
  final Character character;

  CharactersHomeListItem({@required this.character});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text(character.name),
      subtitle: Text(character.element),
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => CharacterDetails(character: character,))),
    );
  }
}