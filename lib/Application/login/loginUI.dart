import 'package:flutter/cupertino.dart';
import 'package:flutter_uxin/Application/mainTableBar/mainTableBar.dart';


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
    return new CupertinoPageScaffold(
      navigationBar: new CupertinoNavigationBar(
        middle: Text("登陆"),
        backgroundColor: CupertinoTheme.of(context).primaryColor,
      ),
      child : GestureDetector(
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
                Padding(padding: const EdgeInsets.only(bottom: 50.0)),
                new Text(
                  '优教信使登陆',
                  style: new TextStyle(
                      fontSize:30.0,
                      fontFamily: "Billabong",
                      color: CupertinoTheme.of(context).primaryColor),
                ),
                Padding(padding: const EdgeInsets.only(bottom: 50.0)),
                CupertinoTextField(
                  keyboardType: TextInputType.text,
                  placeholder: "用户名",
                  onSubmitted: _userNameChanged,
                  autofocus: false,
                ),
                new Padding(padding: const EdgeInsets.only(bottom: 50.0)),
                CupertinoTextField(
                  keyboardType: TextInputType.text,
                  placeholder: "密码",
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

    Navigator.push(context,
        new CupertinoPageRoute(
            builder: (content) => new MainTleBar()
        )
    );
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

