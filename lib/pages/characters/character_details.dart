import 'package:epic_seven_guide/models/characters/character.dart';
import 'package:epic_seven_guide/widgets/CommonScaffold.dart';
import 'package:flutter/material.dart';

class CharacterDetails extends StatelessWidget {
  final Character character;

  CharacterDetails({@required this.character});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      body: ListView(
        children: <Widget>[

        ],
      ),
    );
  }
}