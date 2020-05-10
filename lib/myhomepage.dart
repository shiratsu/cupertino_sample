import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'cupertinodialog.dart';
import 'cupertinoaction-sheet.dart';
import 'home.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.clock),
            title: Text('テストページ1'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.book),
            title: Text('テストページ2'),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            switch (index) {
              case 0:
                return Home();
                break;
              case 1:
                return CupertinoActionSheetTest();
                break;
            }
          },
        );
      },
    );
  }
}