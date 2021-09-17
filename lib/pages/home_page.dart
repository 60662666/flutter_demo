import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  /// [prefix]需要传入一个前缀信息
  String getCurrentTime(String prefix) {
    DateTime now = DateTime.now();
    var formatter = DateFormat('yyyy-mm-dd H:m:s');
    String nowTime = formatter.format(now);
    return '$prefix $nowTime';
  }

  /// 有状态类组件返回组件信息
  @override
  Widget build(BuildContext context) {
    return Text(getCurrentTime('当前时间是'));
  }
}
