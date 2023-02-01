import 'package:flutter/material.dart';

class CoffeTitle extends StatelessWidget {
  final String coffeImage;
  final String coffeName;
  final String coffePrice;

  CoffeTitle(
      {required this.coffeImage,
      required this.coffeName,
      required this.coffePrice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, bottom: 25),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //coffe image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(coffeImage),
            ),
            //coffe name
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffeName,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "with almond milk",
                    style: TextStyle(fontSize: 20, color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      '\$' + coffePrice,
                    ),
                  ),
                  Icon(Icons.add),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
