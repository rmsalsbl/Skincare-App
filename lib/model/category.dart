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
      id: 'tbs',
      title: 'The Body Shop',
    color: const Color(0xffB66878)
  ),
  Category(
      id: 'sbm',
      title: 'Some by me',
      color: const Color(0xffC98895)
  ),
  Category(
      id: 'np',
      title: 'Npure',
      color: const Color(0xffD49BA7)
  ),
  Category(
      id: 'wd',
      title: 'Wardah',
      color: const Color(0xffE0A2A2)
  ),
  Category(
      id: 'em',
      title: 'Emina',
      color: const Color(0xffC38888)
  ),
  Category(
      id: 'nr',
      title: 'Nature Republic',
      color: const Color(0xffF3B6B6)
  ),
  Category(
      id: 'if',
      title: 'Innisfree',
      color: const Color(0xffE5969C)
  ),
  Category(
      id: 'sl',
      title: 'Scarlett',
      color: const Color(0xffF5C9C6)
  ),



];