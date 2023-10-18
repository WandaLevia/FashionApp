import 'package:fashion/pages/home/fashionpagebody.dart';
import 'package:fashion/pages/home/profile_page.dart';
import 'package:flutter/material.dart';

class MainFashionPage extends StatefulWidget {
  const MainFashionPage({super.key});

  @override
  State<MainFashionPage> createState() => _MainFashionPage();
}

class _MainFashionPage extends State<MainFashionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBar(
            title: Text("vesha"),
            actions: [
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  // Add the code to handle the shopping cart action
                },
              ),
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(),
                    ),
                  );
                },
              ),
            ],
          ),
          // Search bar
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                border: InputBorder.none,
              ),
            ),
          ),
          // Body
          Expanded(
            child: SingleChildScrollView(
              child: FashionPageBody(),
            ),
          ),
        ],
      ),
    );
  }
}
