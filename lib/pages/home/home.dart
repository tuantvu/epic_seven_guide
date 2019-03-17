import 'package:epic_seven_guide/pages/home/link_buttons.dart';
import 'package:epic_seven_guide/routes.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Text("Epic Seven Guide", textAlign: TextAlign.center, style: TextStyle(
              fontSize: 24.0,
              color: Colors.green,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),),
            LinkButtons(
              title: "News",
              routeName: Routes.HOME,
            ),
            LinkButtons(
              title: "Characters",
              routeName: Routes.CHARACTERS,
            ),
            LinkButtons(
              title: "Guides",
              routeName: Routes.HOME,
            ),
            LinkButtons(
              title: "Contact",
              routeName: Routes.HOME,
            )
          ],
        ),
      ),
    );
  }
}