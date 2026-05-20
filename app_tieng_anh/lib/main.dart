

import 'package:app_tieng_anh/data/app_helper.dart';
import 'package:app_tieng_anh/ui/screens/listening_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppHelper.initDB();
    return MaterialApp(
      title: 'Flutter Demo',
      home:Scaffold
      (
        body: ListeningScreen()
      ),
    );
  }
}


