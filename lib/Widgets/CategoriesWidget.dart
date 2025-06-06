import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
      child: Row(
        children: [
          for (var i = 1; i <= 8; i++)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 70,
                width: 100,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 243, 248, 243),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(66, 141, 153, 137),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage("images/Categories/categorie$i.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
