// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '第五章：容器类组件',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScaffoldRoute(),
    );
  }
}

/**
 * Padding 知识点
 */
// class HomeContent extends StatelessWidget {
//   const HomeContent({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//           width: 400,
//           height: 400,
//           color: Colors.blue,
//           child: Padding(
//             //上下左右各添加16像素补白
//             padding: const EdgeInsets.all(16),
//             child: Column(
//               //显式指定对齐方式为左对齐，排除对齐干扰
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisSize: MainAxisSize.min,
//               children: const <Widget>[
//                 Padding(
//                   //左边添加8像素补白
//                   padding: EdgeInsets.only(left: 8),
//                   child: Text("Hello world"),
//                 ),
//                 Padding(
//                   //上下各添加8像素补白
//                   padding: EdgeInsets.symmetric(vertical: 30),
//                   child: Text("I am Jack"),
//                 ),
//                 Padding(
//                   // 分别指定四个方向的补白
//                   padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
//                   child: Text("Your friend"),
//                 )
//               ],
//             ),
//           )),
//     );
//   }
// }
/**
 * Decoration 知识点
 */
// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         height: 50,
//         width: 200,
//         alignment: Alignment.center,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.red, Colors.orange],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//           borderRadius: BorderRadius.circular(30),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black,
//               offset: Offset(2, 2),
//               blurRadius: 4,
//             ),
//           ],
//         ),
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
//           child: Text(
//             "Login",
//             style: TextStyle(fontSize: 15, color: Colors.blue),
//           ),
//         ));
//   }
// }
// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: EdgeInsets.symmetric(vertical: 50),
//         child: Column(
//           children: [
//             Padding(
//               padding: EdgeInsets.symmetric(vertical: 40),
//               child: Text(
//                 '变换第一个例子',
//                 style: TextStyle(fontSize: 12, color: Colors.blue),
//               ),
//             ),
//             Container(
//               color: Colors.black,
//               child: Transform(
//                 alignment: Alignment.topRight,
//                 transform: Matrix4.skewY(0.3),
//                 child: Container(
//                   padding: EdgeInsets.all(8.0),
//                   color: Colors.deepOrange,
//                   child: Text("Apartment for rent!"),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(vertical: 40),
//               child: Text(
//                 '变换之平移',
//                 style: TextStyle(fontSize: 12, color: Colors.blue),
//               ),
//             ),
//             Container(
//               decoration: BoxDecoration(color: Colors.red),
//               child: Transform.translate(
//                 offset: Offset(-10, -10),
//                 child: Text("Hello world"),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(vertical: 40),
//               child: Text(
//                 '变换之缩放',
//                 style: TextStyle(fontSize: 12, color: Colors.blue),
//               ),
//             ),
//             Container(
//               decoration: BoxDecoration(color: Colors.red),
//               child: Transform.scale(
//                 scale: 1.5,
//                 child: Text("Hello world"),
//               ),
//             ),
//           ],
//         ));
//   }
// }
/**
 * Container 知识点
 */

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(top: 50.0, left: 120.0),
//       constraints: BoxConstraints.tightFor(width: 200.0, height: 150.0),
//       decoration: BoxDecoration(
//         gradient: RadialGradient(
//             colors: [Colors.red, Colors.orange],
//             center: Alignment.topLeft,
//             radius: .98),
//         boxShadow: [
//           BoxShadow(
//               color: Colors.black54, offset: Offset(2.0, 2.0), blurRadius: 4.0)
//         ],
//       ),
//       transform: Matrix4.rotationZ(.2),
//       alignment: Alignment.center,
//       child: Text(
//         '5.20',
//         style: TextStyle(color: Colors.white, fontSize: 40.0),
//       ),
//     );
//   }
// }
/**
 * 裁剪知识点
 */
// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Widget avatar = Image.network(
//         'data:image/jpeg;base64,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',
//         height: 50,
//         width: 50);
//     return Center(
//       child: Column(
//         children: <Widget>[
//           avatar, //不剪裁
//           ClipOval(child: avatar), //剪裁为圆形
//           ClipRRect(
//             //剪裁为圆角矩形
//             borderRadius: BorderRadius.circular(5.0),
//             child: avatar,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Align(
//                 alignment: Alignment.topLeft,
//                 widthFactor: .5, //宽度设为原来宽度一半，另一半会溢出
//                 child: avatar,
//               ),
//               Text(
//                 "你好世界",
//                 style: TextStyle(color: Colors.green),
//               )
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               ClipRect(
//                 //将溢出部分剪裁
//                 child: Align(
//                   alignment: Alignment.topLeft,
//                   widthFactor: .5, //宽度设为原来宽度一半
//                   child: avatar,
//                 ),
//               ),
//               Text("你好世界", style: TextStyle(color: Colors.green))
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
/**
 * Scaffold知识点
 */

class ScaffoldRoute extends StatefulWidget {
  @override
  _ScaffoldRouteState createState() => _ScaffoldRouteState();
}

class _ScaffoldRouteState extends State<ScaffoldRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Scaffold知识点"),
        ),
        body: Center(
          child: Text("Scaffold知识点"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(icon: Icon(Icons.business), label: "商城"),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: "学习"),
          ],
        ));
  }
}
