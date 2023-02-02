import 'package:flutter/material.dart';
import 'package:shoping/cart_page.dart';

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var price;
  var imagepath;
  var description;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 241, 250),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return CartPage();
                },
              ),
            );
          },
          elevation: 10,
          backgroundColor: Colors.white,
          iconSize: 24,
          unselectedItemColor: Theme.of(context).focusColor.withOpacity(1),
          selectedIconTheme: IconThemeData(size: 30),
          selectedItemColor: Colors.greenAccent,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.heart_broken),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ]),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Expanded(
                    flex: -2,
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Icon(Icons.menu, textDirection: TextDirection.ltr),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 250),
                      child: CircleAvatar(
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 25,
                        ),
                        backgroundColor: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //menu
            Container(
              height: 50,
              margin: EdgeInsets.all(25),
              child: Row(
                children: [
                  Expanded(
                      flex: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Find Shoes",
                                border: InputBorder.none),
                          ),
                        ),
                      )),
                  Expanded(
                    child: Container(
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: Colors.white,
                      ),
                      child: Container(
                        margin: EdgeInsets.all(8),
                        child: CircleAvatar(
                          child: Icon(
                            Icons.search_rounded,
                            color: Colors.white,
                            size: 25,
                          ),
                          backgroundColor: Color.fromARGB(255, 13, 216, 223),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            //searchbar
            Container(
              alignment: AlignmentDirectional.topStart,
              margin: EdgeInsets.fromLTRB(30, 10, 10, 20),
              child: Container(
                child: Text(
                  'Categories',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            //categories
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  GetContainer('Nike'),
                  GetContainer('Addidas'),
                  GetContainer('Puma'),
                  GetContainer('Balenciaga'),
                  GetContainer('Converse'),
                ],
              ),
            ),
            //listcategories
            Container(
              //color: Colors.red,
              height: 450,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 200,
                        //color: Colors.blue,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  child: getCard(180, 'assets/images/gs2.jpg',
                                      '''Nike Jorden:'Why not?' Zer0.3 PF'''),
                                ),
                                // color: Colors.white,
                              ),
                            ),
                            Expanded(
                                child: Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Container(
                                  padding: EdgeInsets.all(5),
                                  child: getCard(175, 'assets/images/gs2.jpg',
                                      '''Nike Jorden:'Why not?' Zer0.3 PF''')),
                              // color: Colors.white,
                            )),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 200,
                        //color: Colors.blue,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  child: getCard(190, 'assets/images/gs2.jpg',
                                      '''Nike Jorden:'Why not?' Zer0.3 PF'''),
                                ),
                                // color: Colors.white,
                              ),
                            ),
                            Expanded(
                                child: Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Container(
                                  padding: EdgeInsets.all(5),
                                  child: getCard(190, 'assets/images/gs2.jpg',
                                      '''Nike Jorden:'Why not?' Zer0.3 PF''')),
                              // color: Colors.white,
                            )),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 200,
                        //color: Colors.blue,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  child: getCard(175, 'assets/images/gs2.jpg',
                                      '''Nike Jorden:'Why not?' Zer0.3 PF'''),
                                ),
                                // color: Colors.white,
                              ),
                            ),
                            Expanded(
                                child: Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Container(
                                  padding: EdgeInsets.all(5),
                                  child: getCard(150, 'assets/images/gs2.jpg',
                                      '''Nike Jorden:'Why not?' Zer0.3 PF''')),
                              // color: Colors.white,
                            )),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 200,
                        //color: Colors.blue,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  child: getCard(180, 'assets/images/gs2.jpg',
                                      '''Nike Jorden:'Why not?' Zer0.3 PF'''),
                                ),
                                // color: Colors.white,
                              ),
                            ),
                            Expanded(
                                child: Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Container(
                                  padding: EdgeInsets.all(5),
                                  child: getCard(178, 'assets/images/gs2.jpg',
                                      '''Nike Jorden:'Why not?' Zer0.3 PF''')),
                              // color: Colors.white,
                            )),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
            //items
          ],
        ),
      ),
    );
  }

  Widget GetContainer(textdemo) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(2),
        child: Text(
          textdemo,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ),
    );
  }

  Widget getCard(price, imagepath, description) {
    return Card(
      margin: EdgeInsets.all(5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10,
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25),
                  height: 20,
                  child: Row(
                    children: [
                      Text(
                        '\$',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 13, 216, 223),
                        ),
                      ),
                      Text(
                        '${price}',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      //color: Colors.red,
                      ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  height: 20,
                  //color: Colors.blue,
                  child: Icon(
                    Icons.heart_broken_rounded,
                    size: 20,
                    color: Colors.redAccent,
                  ),
                ),
              ],
            ),
          ),
          //heart icon with prize
          Container(
            padding: EdgeInsets.only(bottom: 8),
            child: Image.asset(
              imagepath,
              height: 70,
              width: 90,
            ),
          ),
          //image in card
          Container(
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          ),
          //description
        ],
      ),
    );
  }
}
