import 'package:flutter/material.dart';
import 'package:skt_uygulamasi/categories_page.dart';

import 'UrunEkleme.dart';

class UrunlerSayfasi extends StatefulWidget {
  const UrunlerSayfasi({Key? key}) : super(key: key);

  @override
  State<UrunlerSayfasi> createState() => _UrunlerSayfasiState();
}

class _UrunlerSayfasiState extends State<UrunlerSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ürünler Kategorisi'),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                value: 0,
                child: Row(children: [
                  Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                  Text("  Ürün Ekleme")
                ]),
              ),
            ],
            onSelected: (item) => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => UrunEkleme()),
            ),
          )
        ],
      ),
      body: CategoriesPage(),
    );
  }
}
