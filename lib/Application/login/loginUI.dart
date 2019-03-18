import 'package:flutter/material.dart';

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
      body: new Center(
        child: new Padding(
          padding: const EdgeInsets.only(top: 240),
          child: new Column(
            children: <Widget>[
              new Text(
                '优教信使登陆',
                style: new TextStyle(
                  fontSize: 68.0,
                  fontFamily: "Billabong",
                  color: Colors.black),
                ),
              new Padding(padding: const EdgeInsets.only(bottom: 100.0)),
              new GestureDetector(
                onTap: login,
                child: new Image.asset(
                  "assets/images/google_signin_button.png",
                  width: 225,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void login() async {

  }
}

