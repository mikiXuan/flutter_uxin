import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_uxin/Application/mainView/MainFirstView.dart';

class MainTleBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(child: Container(
        child: CupertinoTabScaffold(
            tabBar: CupertinoTabBar(
              items: [
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.home),
                    title: Text("主页"),
                    backgroundColor: CupertinoColors.black
                ),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.phone),
                    title: Text("聊天"),
                    backgroundColor: CupertinoColors.black
                )
              ],
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              activeColor: CupertinoColors.activeBlue,
            ),
            tabBuilder: (BuildContext context, int index) {
              return CupertinoTabView(
                  builder: (BuildContext context) {
                    if (index == 0)
                      return IosHomeRoute();
                    else if (index == 1)
                      return IosPhoneRoute();
                  }
              );
            }
            ),
        ),
        onWillPop: () {
          return Future.value(false);
        }
    );
  }
}