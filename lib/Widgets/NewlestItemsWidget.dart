import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewlestItemsWidget extends StatelessWidget {
  const NewlestItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            for (var i = 3; i < 5; i++)
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: 380,
                  height: 170,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(174, 233, 245, 229),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(137, 255, 255, 255),
                        blurRadius: 10,
                        spreadRadius: 3,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(6),
                          child: Image.asset(
                            "images/popular/www$i.png",
                            width: 135,
                            height: 110,
                          ),
                        ),
                      ),
                      Container(
                        width: 190,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hot chicken ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Taste Our Hot Chicken, We Provide Our Great Food.",
                              style: TextStyle(fontSize: 15),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                for (var i = 0; i < 4; i++)
                                  Icon(
                                    Icons.star,
                                    color: const Color.fromARGB(
                                      255,
                                      255,
                                      65,
                                      59,
                                    ),
                                    size: 20,
                                  ),

                                Icon(
                                  Icons.star,
                                  color: const Color.fromARGB(
                                    255,
                                    165,
                                    163,
                                    163,
                                  ),
                                  size: 20,
                                ),
                              ],
                            ),
                            Text(
                              "\$10",
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(255, 248, 108, 98),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.favorite_border,
                              color: const Color.fromARGB(255, 247, 132, 124),
                              size: 30,
                            ),
                            Icon(
                              CupertinoIcons.cart,
                              color: const Color.fromARGB(255, 247, 132, 124),
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
