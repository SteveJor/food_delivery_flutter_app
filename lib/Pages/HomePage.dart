import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/AppBarWidget.dart';
import '../Widgets/CategoriesWidget.dart';
import '../Widgets/DrowerWidget.dart';
import '../Widgets/NewlestItemsWidget.dart';
import '../Widgets/PopularItemsWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBarWidget(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: const Color.fromARGB(175, 223, 250, 214),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(31, 37, 43, 37),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      CupertinoIcons.search,
                      color: const Color.fromARGB(255, 151, 123, 80),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: 290,
                      height: 50,

                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "What would you like to have?",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(Icons.filter_list),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 10),
            child: Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          CategoriesWidget(),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 10),
            child: Text(
              "Popular",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          PopularItemsWidget(),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 10),
            child: Text(
              "Newlest",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          NewlestItemsWidget(),
        ],
      ),
      drawer: DrowerWidget(),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(45, 158, 158, 158),
              blurRadius: 10,
              spreadRadius: 3,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color.fromARGB(209, 224, 255, 225),
          child: Icon(CupertinoIcons.cart, size: 28),
        ),
      ),
    );
  }
}
