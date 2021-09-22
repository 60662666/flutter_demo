import 'package:flutter/material.dart';

class SubStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    print('sub createState');
    return SubState();
  }
}

class SubState extends State<SubStatefulWidget> {
  String name = 'sub test';
  @override
  void initState() {
    print('sub initState');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('sub didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  didUpdateWidget(SubStatefulWidget oldWidget) {
    print('sub didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    print('sub deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('sub dispose');
    super.dispose();
  }

  @override
  void reassemble() {
    print('sub reassemble');
    super.reassemble();
  }

  void changeName() {
    setState(() {
      print('sub setState');
    });
  }

  @override
  Widget build(BuildContext context) {
    print('sub build');
    return Column(
      children: <Widget>[
        Text(
          'sub name $name',
          style: TextStyle(
              fontSize: 26.0, color: Colors.blueAccent),
        )
      ],
    );
  }
}
