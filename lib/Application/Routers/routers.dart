
import 'package:flutter/material.dart';
import './route_handlers.dart';
import 'package:fluro/fluro.dart';

class Routes {
  static String root = "/";
  static String navigationTabBerTag = "/navigationTabBar";
  static String firstSubviewTag = "/firstHome/firstSubview";



  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          print("ROUTE WAS NOT FOUND !!!");
        });
    
    router.define(root, handler: rootHandler);
    router.define(navigationTabBerTag, handler: tabBarHandler);
    router.define(firstSubviewTag, handler: firstSubHandler,transitionType: TransitionType.native );

  }
}
