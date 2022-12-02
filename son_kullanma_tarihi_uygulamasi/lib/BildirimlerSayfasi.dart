import 'package:flutter/material.dart';

class Bildirimler extends StatefulWidget {
  const Bildirimler({Key? key}) : super(key: key);

  @override
  State<Bildirimler> createState() => _BildirimlerState();
}

class _BildirimlerState extends State<Bildirimler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bildirimler"),
      ),
    );
  }
}
