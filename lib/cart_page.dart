import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:shoping/constdata.dart';
import 'package:swipe/swipe.dart';

List<String> list1 = <String>['43', '44', '45', '46'];

class CartPage extends StatefulWidget {
  int? index, i;
  CartPage([this.index, this.i]);
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  String dropdownValue1 = list1.first;
  @override
  Widget build(BuildContext context) {
    int itemCount = 0;
    for (var element in quantity.values) {
      itemCount += element;
    }
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 241, 250),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(8, 15, 8, 8),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 13),
                      alignment: AlignmentDirectional.topStart,
                      child: Image.asset(
                        'assets/images/menu.png',
                        fit: BoxFit.fill,
                        width: 30,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 13),
                      alignment: AlignmentDirectional.topEnd,
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
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'NotoSans',
                      ),
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
            Expanded(
              child: Container(
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: ListView.builder(
                    itemCount: checkOut.length,
                    itemBuilder: ((context, index) => getCard(index)),
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
                  Swipe(
                    onSwipeRight: () {
                      Container();
                    },
                    child: Card(
                        color: Color.fromARGB(255, 237, 248, 252),
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
                                  '${itemCount}  Items',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 20),
                                ),
                              ),
                            ),
                            Expanded(
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
                          ]),
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(15),
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color.fromARGB(255, 13, 216, 223),
                        ),
                        margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Text(
                          'Checkout',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
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

  Widget getCard(int index) {
    if (quantity[index] == null) quantity[index] = 1;
    return quantity[index]! > 0
        ? Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              height: 120,
              padding: EdgeInsets.all(3),
              //color: Colors.pinkAccent,
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(8, 0, 0, 2),
                    width: double.infinity,
                    //color: Colors.green,
                    child: Text(
                      description[index],
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
                            flex: 4,
                            child: Container(
                              //color: Colors.red,
                              child: Column(children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                  padding: EdgeInsets.all(3),
                                  // height: 20,
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          '\$',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Color.fromARGB(
                                                255, 13, 216, 223),
                                          ),
                                        ),
                                        Text(
                                          price[index],
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Row(children: [
                                    Expanded(
                                      child: Container(
                                        //color: Colors.green,
                                        child: Row(children: [
                                          Expanded(
                                            child: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  if (quantity[index]! > 0) {
                                                    quantity[index] =
                                                        quantity[index]! - 1;
                                                  }
                                                });
                                              },
                                              child: Container(
                                                // color: Colors.red,
                                                child: Icon(Icons.remove),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              // color: Colors.blue,
                                              child: Text(
                                                textAlign: TextAlign.center,
                                                '${quantity[index]}',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              child: InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    quantity[index] =
                                                        quantity[index]! + 1;
                                                  });
                                                },
                                                child: Icon(
                                                  Icons.add,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]),
                                      ),
                                    ),
                                    //+ 1 -
                                    Expanded(
                                      child: Container(
                                        //color: Colors.red,
                                        child: Container(
                                          alignment:
                                              AlignmentDirectional.center,
                                          //margin: EdgeInsets.only(left: 20),
                                          child: DropdownButton<String>(
                                            value: dropdownValue1,
                                            style: const TextStyle(
                                                color: Colors.deepPurple),
                                            onChanged: (String? value) {
                                              setState(() {
                                                dropdownValue1 = value!;
                                              });
                                            },
                                            items: list1
                                                .map<DropdownMenuItem<String>>(
                                                    (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value),
                                              );
                                            }).toList(),
                                          ),
                                        ),
                                      ),
                                    ),
                                    //dropdown
                                  ]),
                                ),
                              ]),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              //color: Colors.red,
                              height: 140,
                              margin: EdgeInsets.fromLTRB(50, 0, 20, 0),
                              child: Image.asset(
                                height: 150,
                                fit: BoxFit.fill,
                                alignment: AlignmentDirectional.topStart,
                                imagepath[index],
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
          )
        : const SizedBox(
            width: 0,
            height: 0,
          );
  }
}
