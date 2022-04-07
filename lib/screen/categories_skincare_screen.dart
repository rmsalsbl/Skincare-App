import 'package:flutter/material.dart';
import 'package:food_app_10_grade/model/skincare.dart';
import 'package:food_app_10_grade/widget/skincare_item.dart';

class CategoriesSkincareScreen extends StatelessWidget {
  //membuat var untuk nama routesnya
  static const routeName = '/categories-meals';

  @override
  Widget build(BuildContext context) {
    //menyambungkan argumen yang dikirim
    final routeArgs = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoyId = routeArgs["id"];
    final categoryTitle = routeArgs["title"];

//membaut var untuk memfilter datanya sesuai ynag kita klil dan menampilakn dalam bentuk list
    final categoriesMeals = cares.where((mealItem) => mealItem.categories.contains(categoyId)).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
          itemBuilder: (context , index) {
            return SkincareItem(
                id: categoriesMeals[index].id,
                title: categoriesMeals[index].title,
                imgUrl: categoriesMeals[index].imgurl,
                type: categoriesMeals[index].type,
                affordability: categoriesMeals[index].affordability
            );
          },
        itemCount: categoriesMeals.length,
      ),
    );
  }
}
