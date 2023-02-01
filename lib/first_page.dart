import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 13, 216, 223),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey,
          iconSize: 24,
          unselectedItemColor: Theme.of(context).focusColor.withOpacity(1),
          selectedIconTheme: IconThemeData(size: 30),
          selectedItemColor: Colors.greenAccent,
          type: BottomNavigationBarType.fixed,
          items: [
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
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: -2,
                      child: Container(
                        margin: EdgeInsets.all(20),
                        child:
                            Icon(Icons.menu, textDirection: TextDirection.ltr),
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
              ],
            ),
            //menu
            Column(
              children: [
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
                              backgroundColor:
                                  Color.fromARGB(255, 13, 216, 223),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            //searchbar
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
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
              ],
            ),
            //categories
            Column(
              children: [
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
              ],
            ),
            //list
            Column(children: [
              Row(children: [
                Card(
                    color: Colors.white,
                    elevation: 10,
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(20),
                                  height: 20,
                                  child: Text(
                                    '\$180',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(20),
                                  height: 20,
                                  color: Colors.blue,
                                  child: Icon(
                                    Icons.heart_broken_rounded,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(children: [
                          Image.asset(
                            'assets/images/gs2.jpg',
                            height: 90,
                            width: 80,
                          ),
                        ]),
                        Column(
                          children: [
                            Container(
                              width: 180,
                              child: Text(
                                '''Nike Jorden:'Why not?' Zer0.3 PF''',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    )),
                Card(
                  color: Colors.white,
                  elevation: 10,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(20),
                                height: 20,
                                child: Text(
                                  '\$180',
                                  style: TextStyle(fontSize: 20),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(20),
                                height: 20,
                                color: Colors.blue,
                                child: Icon(
                                  Icons.heart_broken_rounded,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/gs2.jpg',
                            height: 90,
                            width: 80,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 180,
                            child: Text(
                              '''Nike Jorden:'Why not?' Zer0.3 PF''',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ]),
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
}
