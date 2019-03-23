import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_uxin/Application/login/loginUI.dart';

void main() => runApp(UXinApp());

class UXinApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return CupertinoApp(
      title: 'Flutter Ios UXin',
      theme: CupertinoThemeData(
        brightness: Brightness.light,
        primaryColor: CupertinoColors.activeBlue,
        primaryContrastingColor: CupertinoColors.inactiveGray,
        barBackgroundColor: CupertinoColors.white,
        scaffoldBackgroundColor: CupertinoColors.white
      ),
      home: LoginView(),
    );
  }
}

