import 'package:flutter/material.dart';
import './pages/test_stateful_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '标题',
      theme: new ThemeData(primaryColor: Colors.amberAccent),
      home: Scaffold(
        appBar: AppBar(
          title: Text('有状态组件的生命周期'),
        ),
        body: Center(child: TestStatefulWidget()),
      ),
    );
  }
}
