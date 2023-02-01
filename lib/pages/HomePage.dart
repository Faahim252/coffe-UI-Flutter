import 'package:coffe_ui/pages/coffeType.dart';
import 'package:coffe_ui/pages/coffepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // list of coffe Types
  final List Coffetype = [
    ["copotino", true],
    ["Latte", false],
    ["Black", false],
    ["Tea", false]
  ];

  void CoffeTypeIsselected(int index) {
    setState(() {
      //this for loop make every selection false
      for (int i = 0; i < Coffetype.length; i++) {
        Coffetype[i][1] = false;
      }
      Coffetype[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
          ),
          Icon(Icons.person)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
            ),
            label: "",
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Find the best Coffe for you",
                style: GoogleFonts.bebasNeue(
                  fontSize: 56,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "find your coffe...",
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.grey.shade600,
                  )),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            //horizantal list view of coffe types
            Container(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Coffetype.length,
                itemBuilder: ((context, index) {
                  return CoffeType(
                      coffeTypes: Coffetype[index][0],
                      isSelected: Coffetype[index][1],
                      onTap: (() {
                        CoffeTypeIsselected(index);
                      }));
                }),
              ),
            ),
            //horizantal list view of coffe tiles
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CoffeTitle(
                    coffeImage: 'lib/assets/images/cup.jpg',
                    coffeName: "latte",
                    coffePrice: '4.50',
                  ),
                  CoffeTitle(
                    coffeImage: 'lib/assets/images/cup.jpg',
                    coffeName: "latte",
                    coffePrice: '4.50',
                  ),
                  CoffeTitle(
                    coffeImage: 'lib/assets/images/cup.jpg',
                    coffeName: "latte",
                    coffePrice: '4.50',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
