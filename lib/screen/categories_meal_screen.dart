import 'package:flutter/material.dart';
import 'package:food_app_10_grade/model/category.dart';
import 'package:food_app_10_grade/model/meal.dart';
import 'package:food_app_10_grade/widget/meal_item.dart';

class CategoriesMealScreen extends StatelessWidget {
  //membuat var untuk nama routesnya
  static const routeName = '/categories-meals';

  @override
  Widget build(BuildContext context) {
    //menyambungkan argumen yang dikirim
    final routeArgs = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoyId = routeArgs["id"];
    final categoryTitle = routeArgs["title"];

//membaut var untuk memfilter datanya sesuai ynag kita klil dan menampilakn dalam bentuk list
    final categoriesMeals = meals.where((mealItem) => mealItem.categories.contains(categoyId)).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
          itemBuilder: (context , index) {
            return MealItem(
                id: categoriesMeals[index].id,
                title: categoriesMeals[index].title,
                imgUrl: categoriesMeals[index].imgurl,
                duration: categoriesMeals[index].duration,
                complexity: categoriesMeals[index].complexity,
                affordability: categoriesMeals[index].affordability
            );
          },
        itemCount: categoriesMeals.length,
      ),
    );
  }
}
