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
                color: Colors.amber,
                height: 300,
                child: SingleChildScrollView(
                  child: Column(children: [
                    getCard(),
                    getCard(),
                    getCard(),
                  ]),
                ),
              ),
            ),

            Container(
              height: 150,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }

  Widget getCard() {
    return Card(
      child: Container(
        height: 120,
        color: Colors.pinkAccent,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15),
              width: double.infinity,
              color: Colors.green,
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
                            margin: EdgeInsets.only(left: 2),
                            padding: EdgeInsets.all(5),
                            // height: 20,
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
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 10, 2),
                            child: Row(children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  color: Colors.green,
                                  child: Row(children: [
                                    Expanded(
                                      child: Container(
                                        // color: Colors.red,
                                        child: Icon(Icons.remove, size: 30),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        color: Colors.blue,
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
                                        child: Icon(Icons.add, size: 30),
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                              //+ 1 -
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  color: Colors.red,
                                  child: Text('43',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 20)),
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
                        padding: EdgeInsets.only(bottom: 8),
                        //margin: EdgeInsets.only(left: 70),
                        child: Image.asset(
                          width: 10,
                          fit: BoxFit.fill,
                          height: 80,
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
