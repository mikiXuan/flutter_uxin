import 'package:flutter/material.dart';

class MainTleBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: Text("New route"),
      ),
      body: Center(
        child: Text("This is new route"),
      ),
    );
  }
}

class MainInfo {
  final String txt ;
  final bool bl ;

  MainInfo({
    this.txt,
    this.bl,
  });

  factory MainInfo.initial() => new MainInfo(txt : "Love");
  factory MainInfo.loading() => new MainInfo(bl: false);

}