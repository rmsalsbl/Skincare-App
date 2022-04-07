import 'package:flutter/material.dart';
import 'package:food_app_10_grade/model/skincare.dart';
import 'package:food_app_10_grade/screen/detail_skincare_screen.dart';

class SkincareItem extends StatelessWidget {
  final String id;
  final String title;
  final String imgUrl;
  final String type;
  final Affordability affordability;

  SkincareItem(
      {required this.id,
      required this.title,
      required this.imgUrl,
      required this.type,
      required this.affordability});

  //membuat func untuk complexity


  //membuat func untuk affordability
  String get affordabilityText {
    switch (affordability) {
      case Affordability.Terjangkau:
        return 'Terjangkau';
      case Affordability.Lumayan:
        return 'Lumayan';
      case Affordability.Mahal:
        return 'Mahal';
      default:
        return 'Unknown';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, DetailSkincareScreen.routesName, arguments: id);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)
                  ),
                  child: Image.network(imgUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    bottom: 20,
                    right: 10,
                    child: Container(
                      width: 300,
                      color: Colors.black54,
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 20,
                      ),
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    )
                )
              ],
            ),
            Padding(
                padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.face_retouching_natural),
                      const SizedBox(width: 6,),
                      Text(type)
                    ],
                  ),

                  Row(
                    children: [
                      const Icon(Icons.attach_money),
                      const SizedBox(width: 6,),
                      Text(affordabilityText)
                    ],
                  ),
                ],
              ),

            ),

          ],
        ),
      ),
    );
  }
}
