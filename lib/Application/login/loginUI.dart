import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

var userName;
var userPwd;

class LoginView extends StatefulWidget{
  LoginView({Key key}) : super(key: key);

  @override
  _LoginViewState createState() => new _LoginViewState();
}

class _LoginViewState extends State<LoginView>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: null,
      body:GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: (){
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(25.0),
          children: <Widget>[
            Column(
              children: <Widget>[
                new Padding(padding: const EdgeInsets.only(bottom: 150.0)),
                new Text(
                  '优教信使登陆',
                  style: new TextStyle(
                      fontSize:50.0,
                      fontFamily: "Billabong",
                      color: Colors.black),
                ),
                new Padding(padding: const EdgeInsets.only(bottom: 50.0)),
                new TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    icon: null,
                    labelText: '请输入用户名',
                    helperText: '手机号/账号',
                  ),
//                  onChanged: _userNameChanged,
                  onSubmitted: _userNameChanged,
                  autofocus: false,
                ),
                new TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    icon: null,
                    labelText: '请输入密码',
                    helperText: '初始123456的那个密码',
                  ),
//                  onChanged: _userPwdChanged,
                  onSubmitted: _userPwdChanged,
                  autofocus: false,
                ),
                new Padding(padding: const EdgeInsets.only(bottom: 50.0)),
                new GestureDetector(
                  onTap: login,
                  child: new Image.asset(
                    "assets/images/btn_Tea_GuidePage@2x.png",
                    width: 125,
                  ),
                )
              ],
            )
          ],
        )
      ),
    );
  }


  void login() async {
    print('点击了立即进入');
  }
  void _userNameChanged(String str) {
    userName = str;
    print('userName : '+userName);
  }
  void _userPwdChanged(String str) {
    userPwd = str;
    print('userPwd : '+userPwd);
  }
}

