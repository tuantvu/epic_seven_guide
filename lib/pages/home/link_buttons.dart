import 'package:flutter/material.dart';

class LinkButtons extends StatelessWidget {
  final String title;
  final String routeName;

  LinkButtons({Key key, @required this.title, @required this.routeName}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: OutlineButton(
        onPressed: () => Navigator.pushNamed(context, routeName),
        child: Text(title),
      ),
    );
  }

}