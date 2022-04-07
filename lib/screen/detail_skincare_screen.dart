import 'package:flutter/material.dart';
import 'package:food_app_10_grade/model/skincare.dart';

class DetailSkincareScreen extends StatelessWidget {
  //buat var untuk inisialisasi routesnya
  static const routesName = '/meal-detail';

  // membuat function untuk menambahkan ke favoritenya. yang fungsi dari function ini sama dengan function togglefav dan isfav di main.dart


  final Function toggleFavorite ;
  final Function isFavorite;

    DetailSkincareScreen(this.toggleFavorite, this.isFavorite);

  @override
  Widget build(BuildContext context) {
    //buat var untuk menamping argumen
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    //buat var unutk menentukan ide yang di select atau yang dipilih
    final selectedMeal = cares.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(selectedMeal.imgurl, fit: BoxFit.cover,),
            ),
            buildSectionTitle(context, "Variant"),
            bulidContainer(context,
            ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    color: Color(0xffFEE3F0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5, horizontal: 10
                      ),
                      child: Text(selectedMeal.variant[index]),
                    ),
                  );
                },
              itemCount: selectedMeal.variant.length,
            )
            ),
            buildSectionTitle(context, "Benefit"),
            bulidContainer(context,
                ListView.builder(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor : Color(0xffFEE3F0),
                            child: Text('# ${(index + 1)}',style: TextStyle(color: Colors.pink), ),
                          ),
                          title: Text(selectedMeal.benefit[index]),
                        )
                      ],
                    );
                  },
                  itemCount: selectedMeal.benefit.length,
                )
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => toggleFavorite(mealId),
        child: Icon(
          isFavorite(mealId) ? Icons.favorite : Icons.favorite_border_outlined, color: Colors.pink,
        ),
      ),
    );
  }

  Widget buildSectionTitle(BuildContext context, String text){
    return Container(
      margin: const EdgeInsets.all(10),
      child: Text(text, style: Theme.of(context).textTheme.headline6,),
    );
  }
  Widget bulidContainer(BuildContext context, Widget child){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey)
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: child,
    );
  }
}
