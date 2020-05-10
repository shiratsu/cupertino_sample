import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'myhomepage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: CupertinoPageScaffold(
          // navigationBar: new CupertinoNavigationBar(
          //   leading: Icon(CupertinoIcons.back),
          //   middle: Icon(CupertinoIcons.info),
          //   trailing: Icon(CupertinoIcons.forward),
          // ),
          child: new MyHomePage(),
        ));
    
  }
}


