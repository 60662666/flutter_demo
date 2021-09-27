import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Clock extends StatefulWidget {
  final String prefix = '当前时间';
  @override
  State<StatefulWidget> createState() {
    return ClockState();
  }
}

class ClockState extends State<Clock> {
  String nowTime = '';
  @override
  void initState() {
    super.initState();
    this.nowTime = getCurTime();
    refreshTime();
  }

  void refreshTime() {
    const period = Duration(milliseconds: 500);
    Timer.periodic(period, (timer) {
      setState(() {
        this.nowTime = getCurTime();
      });
    });
  }

  String getCurTime() {
    DateTime now = DateTime.now();
    var formatter = DateFormat('yy-MM-dd hh:mm:ss');
    return formatter.format(now);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.prefix),
        Center(
          child: Text(this.nowTime),
        )
      ],
    );
  }
}
