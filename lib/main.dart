import 'package:flutter/material.dart';
import 'package:flutter_quickstart_learn/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Quick Start',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const SplashPage(),

      // 关闭 debug 标签
      debugShowCheckedModeBanner: false,
    );
  }
}
