import 'package:epic_seven_guide/models/characters/character.dart';
import 'package:epic_seven_guide/widgets/CommonScaffold.dart';
import 'package:flutter/material.dart';

class CharacterDetails extends StatelessWidget {
  final Character character;

  static Map<String, Color> elementToColorMap = {
    "Fire": Colors.red,
    "Earth": Colors.green,
    "Ice": Colors.blue,
    "Light": Colors.yellow,
    "Dark": Colors.deepPurple
  };

  CharacterDetails({@required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.name),
        centerTitle: true,
        backgroundColor: elementToColorMap[character.element],
      ),
      body: ListView(
        children: <Widget>[
          Image.asset("lib/models/characters/images/${character.picture}"),
          Text("${character.name}")
        ],
      ),
    );
  }

  Widget picture() {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("lib/models/characters/images/achates.jpg"))
      ),
    );
  }
}