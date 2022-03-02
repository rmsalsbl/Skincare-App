import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category{
  final String title;
  final String id;
  final Color color;


  Category({
    required this.id,
    required this.title,
    this.color = Colors.orange
});
}

var categories = [
  Category(
      id: 'c1',
      title: 'Cheese',
    color: Color(0xffBFCBA8)
  ),
  Category(
      id: 'c2',
      title: 'peanut',
      color: Color(0xffA0937D)
  ),
  Category(
      id: 'c3',
      title: 'chocolate',
      color: Color(0xffB4846C)
  ),
  Category(
      id: 'c4',
      title: 'Salmon',
      color: Color(0xffDE8971)
  ),
  Category(
      id: 'c5',
      title: 'chicken',
      color: Color(0xff92817A)
  ),
  Category(
      id: 'c6',
      title: 'Beef',
      color: Color(0xff8E806A)
  ),
  Category(
      id: 'c7',
      title: 'Pasta',
      color: Color(0xffFFE6BC)
  ),
  Category(
      id: 'c8',
      title: 'Tofu',
      color: Color(0xffFFF1AF)
  ),



];