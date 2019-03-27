import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_uxin/Application/login/loginUI.dart';
import 'package:flutter_uxin/Application/Routers/applicaiton.dart';
import 'package:fluro/fluro.dart';
import './Application/Routers/routers.dart';

void main() => runApp(UXinApp());

class UXinApp extends StatefulWidget {

  // This widget is the root of your application.

  @override
  _UXinAppState createState() => _UXinAppState();
}
class _UXinAppState extends State<UXinApp> {
  _UXinAppState()
  {
    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

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
      onGenerateRoute: Application.router.generator,
//      home: LoginView(),
    );
  }
}


