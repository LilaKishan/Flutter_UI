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
              margin: EdgeInsets.all(5),
              color: Colors.amber,
              height: 90,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textAlign: TextAlign.left,
                    'My Bag',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    textAlign: TextAlign.left,
                    'Check and Pay Your Shoes ',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
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
