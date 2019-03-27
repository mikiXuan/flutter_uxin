import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class IosHomeSubRoute extends StatefulWidget {
  final String titleStr;
  final String btnStr;
  IosHomeSubRoute(
      this.titleStr,
      { @required this.btnStr,
      });
  @override
  _IosHomeSubRouteState createState() => _IosHomeSubRouteState();
}

class _IosHomeSubRouteState extends State<IosHomeSubRoute>
{
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.titleStr),
        backgroundColor: CupertinoTheme.of(context).primaryColor,
      ),
      child: Center(
        child: CupertinoButton(
            color: CupertinoTheme.of(context).barBackgroundColor,
            child: Text(widget.btnStr),
            onPressed: () {}
        ),
      ),
    );
  }
}