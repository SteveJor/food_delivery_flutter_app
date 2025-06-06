import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrowerWidget extends StatelessWidget {
  const DrowerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,

            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 223, 247, 213),
              ),
              accountName: Text(
                "Steve Jordan",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              accountEmail: Text(
                "nongninglele2@gmail.com",
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/user.jpg"),
              ),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home, color: Colors.green),
            title: Text(
              "Home",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.person, color: Colors.green),
            title: Text(
              "My Account",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.cart_fill, color: Colors.green),
            title: Text(
              "My Oders",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.heart_fill, color: Colors.green),
            title: Text(
              "My witsh List",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.settings, color: Colors.green),
            title: Text(
              "Settings",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app, color: Colors.green),
            title: Text(
              "Log Out",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
