import 'package:flutter/material.dart';

class PopularItemsWidget extends StatelessWidget {
  const PopularItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: Row(
        children: [
          for (var i = 0; i <= 4; i++)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: Container(
                width: 177,
                height: 225,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(174, 233, 245, 229),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(64, 255, 255, 255),
                      blurRadius: 5,
                      spreadRadius: 3,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(top: 20),
                        child: Image.asset(
                          "images/popular/www$i.png",
                          height: 110,
                        ),
                      ),
                      Text(
                        "Hot Burger",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Taste Our Hot Burger",
                        style: TextStyle(
                          fontSize: 13,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$10",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 248, 108, 98),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.favorite_border, color: const Color.fromARGB(255, 247, 132, 124), size: 26,)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
