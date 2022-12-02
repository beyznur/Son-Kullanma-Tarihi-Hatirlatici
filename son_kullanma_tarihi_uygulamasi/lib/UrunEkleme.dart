import 'package:flutter/material.dart';

class UrunEkleme extends StatelessWidget {
  const UrunEkleme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ürün Ekleme"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Ürün Adı',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Ürün Son Kullanma Tarihi',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelStyle: TextStyle(fontSize: 15),
                labelText: 'Kategori Seçiniz',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelStyle: TextStyle(fontSize: 15),
                labelText: 'Kaç gün önce haberdar olmak istersiniz?',
              ),
            ),
            SizedBox(
              width: 300,
              height: 100,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Kaydet"))
          ],
        ),
      ),
    );
  }
}
