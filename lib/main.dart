

import 'package:flutter/material.dart';
import 'package:flutter_codigo4_youapp/pages/init_page.dart';
import 'package:flutter_codigo4_youapp/pages/test_page.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InitPage(),
    );
  }
}
