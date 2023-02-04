import 'dart:ui';

import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: Color.fromARGB(255, 221, 241, 250),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              //margin: EdgeInsets.all(10),
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
              width: double.infinity,
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.only(left: 20),
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      textAlign: TextAlign.left,
                      'My Bag',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      textAlign: TextAlign.left,
                      'Check and Pay Your Shoes ',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black26),
                    ),
                  ),
                ],
              ),
            ),
            //My bag Text
            Container(
              child: Container(
                //color: Colors.amber,
                height: 430,
                padding: EdgeInsets.all(5),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      getCard(),
                      getCard(),
                      getCard(),
                      getCard(),
                      getCard(),
                      getCard(),
                    ],
                  ),
                ),
              ),
            ),
            //cart item
            Container(
              //height: 70,
              margin: EdgeInsets.all(5),
              // color: Colors.red,
              child: Column(
                children: [
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Row(children: [
                          Expanded(
                            child: Container(
                              //color: Colors.amber,
                              // height: 20,
                              child: Text(
                                '3  Items',
                                textAlign: TextAlign.left,
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              // color: Colors.blue,
                              //height: 20,
                              child: Container(
                                margin: EdgeInsets.all(3),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      '\$',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color:
                                            Color.fromARGB(255, 13, 216, 223),
                                      ),
                                    ),
                                    Text(
                                      '180',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ]),
                      )),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: ElevatedButton(
                      style:
                          ButtonStyle(elevation: MaterialStateProperty.all(10)),
                      onPressed: () {},
                      child: Text('Checkout', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getCard() {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        height: 109,
        padding: EdgeInsets.all(3),
        //color: Colors.pinkAccent,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15),
              width: double.infinity,
              //color: Colors.green,
              child: Text(
                '''Nike Jorden:'Why not?' Zer0.3 PF''',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            //description
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(5),
                        //color: Colors.red,
                        child: Column(children: [
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            padding: EdgeInsets.all(3),
                            // height: 20,
                            child: Container(
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
                                    '180',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 2, 10, 2),
                            child: Row(children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  //color: Colors.green,
                                  child: Row(children: [
                                    Expanded(
                                      child: Container(
                                        // color: Colors.red,
                                        child: Icon(Icons.remove),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        // color: Colors.blue,
                                        child: Text(
                                          textAlign: TextAlign.center,
                                          '1',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: Icon(
                                          Icons.add,
                                        ),
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                              //+ 1 -
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  //color: Colors.red,
                                  child: Text('43',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              //dropdown
                            ]),
                          ),
                        ]),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        //width: 20,

                        margin: EdgeInsets.only(right: 10),
                        child: Image.asset(
                          fit: BoxFit.fill,
                          height: 60,
                          alignment: AlignmentDirectional.topStart,
                          'assets/images/gs2.jpg',
                        ),
                      ),
                    ),
                    //image
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
