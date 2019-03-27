import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_uxin/Application/Routers/applicaiton.dart';

class IosHomeRoute extends StatefulWidget {
  @override
  _IosHomeRouteState createState() => _IosHomeRouteState();
}

class _IosHomeRouteState extends State<IosHomeRoute> {


  String getRouterString(){
    String titleString = "subview";
    String btnString = "pass";
    String routeString = "/firstHome/firstSubview?title_Str=$titleString&btn_Str=$btnString";
    return routeString;
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("首页"),
        backgroundColor: CupertinoTheme.of(context).primaryColor,
      ),
      child: Center(
        child: CupertinoButton(
            color: CupertinoColors.activeBlue,
            child: Text("Press"),
            onPressed: () {
              Application.router.navigateTo(context, getRouterString() );
            }
        ),
      ),
    );
  }
}

class IosPhoneRoute extends StatefulWidget {
  @override
  _IosPhoneRouteState createState() => _IosPhoneRouteState();
}

class _IosPhoneRouteState extends State<IosPhoneRoute>
{
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("聊天"),
        backgroundColor: CupertinoTheme.of(context).primaryColor,
      ),
      child: Center(
        child: CupertinoButton(
            color: CupertinoColors.activeBlue,
            child: Text("Press"),
            onPressed: () {}
        ),
      ),
    );
  }
}