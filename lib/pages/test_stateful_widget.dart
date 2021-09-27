import 'package:flutter/material.dart';
import './sub_stateful_widget.dart';
import './clock.dart';

class TestStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    print('createState');
    return TestState();
  }
}

class TestState extends State<TestStatefulWidget> {
  /// 定义一个state
  int count = 1;
  String name = 'test';
  @override

  ///重写initState函数
  void initState() {
    print('initState');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    count++;
    print('didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  didUpdateWidget(TestStatefulWidget oldWidget) {
    count++;
    print('didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    print('deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }

  @override
  void reassemble() {
    print('reassemble');
    super.reassemble();
  }

  void changeName() {
    setState(() {
      count++;
      print('setState');
      this.name = 'changed name';
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Column(
      children: <Widget>[
        TextButton(
          onPressed: () {
            this.changeName();
          },
          child: Text(
            '$name $count',
            style: TextStyle(
                fontSize: 26.0, color: Color.fromARGB(155, 155, 155, 150)),
          )
        ),
        SubStatefulWidget(),
        Clock()
      ],
    );
  }
}
