import 'package:flutter/material.dart';
import 'package:food_app_10_grade/model/skincare.dart';
import 'package:food_app_10_grade/widget/skincare_item.dart';

class FavoriteScreen extends StatelessWidget {

  final List<Skincare> favoriteMeals;
  FavoriteScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if(favoriteMeals.isEmpty){
      return const Center(
        child: Text("You have no favorites yet - start adding some!"),
      );
    } else {
      return ListView.builder(
        itemBuilder: (context, index){
          return SkincareItem(
              id: favoriteMeals[index].id,
              title: favoriteMeals[index].title,
              imgUrl: favoriteMeals[index].imgurl,
              type: favoriteMeals[index].type,
              affordability: favoriteMeals[index].affordability);
        },
        itemCount: favoriteMeals.length,
      );
    }
  }
}

