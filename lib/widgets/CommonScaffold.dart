import 'package:flutter/material.dart';

class CommonScaffold extends StatelessWidget {
  final Widget body;
  final bool showDrawer;

  CommonScaffold({Key key, this.body, this.showDrawer = true}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: showDrawer ? Drawer(
        child: SafeArea(child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Characters"),
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text("Contact"),
            ),
          ],
        )),
      ) : null,
      body: SafeArea(child: body),
    );
  }
}