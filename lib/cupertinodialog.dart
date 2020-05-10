import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDialogTest extends StatefulWidget {
  @override
  CupertinoDialogTestState createState() => CupertinoDialogTestState();
}

class CupertinoDialogTestState extends State<CupertinoDialogTest> {
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CupertinoButton(
            color: Colors.blue,
            borderRadius: new BorderRadius.circular(30.0),
            onPressed: () {
              showDialog(
                  context: context,
                  child: new CupertinoAlertDialog(
                    title: new Column(
                      children: <Widget>[
                        new Text("テストダイアログ"),
                      ],
                    ),
                    actions: <Widget>[new FlatButton(child: new Text("OK"))],
                  ));
            },
            child: Text('ダイアログを表示します'),
          ),
        ]);
  }
}