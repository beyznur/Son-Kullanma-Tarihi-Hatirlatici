import 'package:flutter/material.dart';
import 'package:skt_uygulamasi/models/category.dart';

class CategoryItem extends StatelessWidget {
  //1 categoryItem - 1 category object
  Category category;
  CategoryItem({required this.category});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Color _color = this.category.color;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              this.category.content,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [_color.withOpacity(1), _color],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft),
          color: _color,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
