import 'package:flutter/material.dart';
import 'package:skt_uygulamasi/category_item.dart';
import 'package:skt_uygulamasi/fake_data.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/asset/images/foods.jpg') as ImageProvider,
          fit: BoxFit.cover,
        ),
      ),
      child: GridView(
        padding: EdgeInsets.all(16),
        children: FAKE_CATEGORIES
            .map((eachCategory) => CategoryItem(category: eachCategory))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
      ),
    );
  }
}
