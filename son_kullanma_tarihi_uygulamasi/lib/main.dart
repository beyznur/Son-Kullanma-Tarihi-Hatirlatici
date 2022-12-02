import 'package:flutter/material.dart';
import 'package:skt_uygulamasi/BottomBarSetting.dart';
import 'package:skt_uygulamasi/UrunEkleme.dart';
import 'package:skt_uygulamasi/UrunlerSayfasi.dart';
import '../categories_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App with Navigation',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: BottomBar(),
    );
  }
}
