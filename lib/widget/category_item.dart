
import 'package:flutter/material.dart';
import 'package:food_app_10_grade/screen/categories_skincare_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem(this.id, this.title, this.color);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, CategoriesSkincareScreen.routeName, arguments: {
          'id' : id,
          'title' : title
        });
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Text(
            title,
        style: Theme.of(context).textTheme.headline6
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color
            ],
            begin: Alignment.topLeft,
            end: Alignment.topRight
          ),
          borderRadius: BorderRadius.circular(15)
        ),
      ),
    );
  }
}
