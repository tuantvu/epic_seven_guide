import 'package:epic_seven_guide/models/characters/character_model.dart';
import 'package:epic_seven_guide/routes.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class LoadingScreen extends StatefulWidget {
  @override
  LoadingScreenState createState() {
    return new LoadingScreenState();
  }
}

class LoadingScreenState extends State<LoadingScreen> {
  int loadingTextCount = 0;
  String loadingText = "Loading";
  String objectLoading = "";
  Timer loadingTextTimer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Epic Seven Guide"),
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Theme.of(context).canvasColor,
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(loadingText),
                Text(objectLoading)
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    loadingTextTimer = Timer.periodic(Duration(milliseconds: 300), (timer) {
      var dotCount = loadingTextCount % 4;
      setState(() {
        loadingText = "Loading".padRight(7 + dotCount, ".").padRight(10, " ");
      });
      loadingTextCount++;
    });

    //Loading assets
    setState(() {
      objectLoading = "Characters";
    });
    CharacterModel.load().then(finishLoading);
  }


  FutureOr finishLoading(Null value) {
    Navigator.pushReplacementNamed(context, Routes.HOME);
    return null;
  }

  @override
  void dispose() {
    if (loadingTextTimer != null) {
      loadingTextTimer.cancel();
    }
    super.dispose();
  }


}