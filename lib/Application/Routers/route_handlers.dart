import '../login/loginUI.dart';
import '../mainTableBar/mainTableBar.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '../subView/FirstSubView.dart';

/*登陆页*/
var rootHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new LoginView();
    });
/*tabbar*/
var tabBarHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return MainTleBar();
    });
/*首页子页面*/
var firstSubHandler = new Handler(
    handlerFunc: (BuildContext context ,Map<String, List<String>> params) {
      String titleStr = params["title_Str"]?.first;
      String btnStr = params["btn_Str"]?.first;
      return IosHomeSubRoute(titleStr,btnStr: btnStr);
    });