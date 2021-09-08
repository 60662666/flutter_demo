import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My flutter demo',
      theme: new ThemeData(primaryColor: Colors.green),
      home: Scaffold(
        appBar: AppBar(title: Text('hello flutter')),
        body: Center(
          /**
           * Text组件的使用
           */
          // child: Text(
          //   "zk's flutter app,zk's flutter app,zk's flutter app,zk's flutter app,zk's flutter app,zk's flutter app,",
          //   textAlign: TextAlign.center,
          //   maxLines: 2,
          //   overflow: TextOverflow.fade,
          //   style: TextStyle(
          //     fontSize: 26,
          //     color: Color.fromARGB(255, 255, 100, 100),
          //     decoration: TextDecoration.underline,
          //     decorationStyle: TextDecorationStyle.solid
          //   )
          // )
          /**
           * Container组件的使用
           */
          // child: Container(
          //   child: Text(
          //     'data',
          //     style: TextStyle(
          //       fontSize: 32.0,
          //       color: Colors.yellow
          //     )
          //   ),
          //   alignment: Alignment.topLeft,//容器内部文字的位置
          //   width: double.infinity,//容器宽 MediaQuery.of(context).size.width 也可以表示撑满屏幕宽度
          //   height: 300.0,//容器高
          //   // color: Colors.blueAccent,
          //   margin: EdgeInsets.all(15.0),
          //   padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
          //   decoration: BoxDecoration(//与上面的color会产生冲突，二者只能取其一
          //     gradient: LinearGradient(
          //       colors: [
          //         Colors.lightBlue,
          //         Colors.yellow.shade600,
          //         Colors.redAccent
          //       ]
          //     ),
          //     border: Border.all(
          //       width: 5.0,
          //       color: Colors.black54
          //     )
          //   ),
          // ),
          /**
           * Image组件的使用
           */
          child: Container(
            child: new Image.asset(
              'images/img1.jpeg',
              // fit: BoxFit.fitWidth,//fit如果什么都不写就是fitWidth效果
              // color: Colors.redAccent,
              // colorBlendMode: BlendMode.darken,
              repeat: ImageRepeat.repeatY,
            ),
            height: double.infinity,
            color: Colors.lightBlue,
            ),
        ),
      )
    );
  }
}
