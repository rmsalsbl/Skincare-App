import 'package:flutter/material.dart';
import 'package:food_app_10_grade/model/skincare.dart';
import 'package:food_app_10_grade/screen/categories_skincare_screen.dart';
import 'package:food_app_10_grade/screen/detail_skincare_screen.dart';
import 'package:food_app_10_grade/screen/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  //membuat data unutk list datat favoritenya yang berupa list kosong
  List<Skincare> _favoriteMeals = [];

  void _toggleFavorite(String mealId){
    final existingIndex =
    _favoriteMeals.indexWhere((meal) => meal.id == mealId);
    if(existingIndex >= 0){
      setState(() {
        _favoriteMeals.removeAt(existingIndex);
      });
    } else{
      setState(() {
        _favoriteMeals.add(cares.firstWhere((meal) => meal.id == mealId));
      });
    }
  }

  //jika pakai _ maka privat
  //untuk ubah colornya
  bool  _isMealFavorite(String mealId) {
    return _favoriteMeals.any((meal) => meal.id == mealId);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.pink,
          ).copyWith(
            secondary: Colors.purpleAccent,
          ),
          canvasColor: Color.fromRGBO(229, 225, 230, 1),
          fontFamily: 'Beardies DEMO',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              headline1: TextStyle(
                  fontFamily: 'RobotoCondensed',
                  fontSize: 24,
                  fontWeight: FontWeight.bold))),
      // home: const HomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(_favoriteMeals),
        CategoriesSkincareScreen.routeName: (context) => CategoriesSkincareScreen(),
        DetailSkincareScreen.routesName: (context) => DetailSkincareScreen(_toggleFavorite, _isMealFavorite),
      },
    );
  }
}
