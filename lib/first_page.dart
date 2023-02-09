import 'package:flutter/material.dart';
import 'package:shoping/cart_page.dart';

import 'package:shoping/description_page.dart';
import 'package:shoping/constdata.dart';

class FirstPage extends StatefulWidget {
  Function changePage;
  FirstPage(this.changePage);
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectIndex = 0;
  List<List<bool>> onTap = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (var i = 0; i < 4; i++) {
      onTap.add(List.filled(4, false));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 241, 250),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                          margin: EdgeInsets.only(left: 13),
                          alignment: AlignmentDirectional.topStart,
                          child: Icon(Icons.menu))),
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
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: price.length,
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: getCard(price[index], imagepath[index],
                            description[index], index),
                      ),
                    );
                    //   } else {
                    //     return Container(
                    //       margin: EdgeInsets.all(2),
                    //       child: Row(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         children: [
                    //           getCard(price[index], imagepath[index],
                    //               description[index], index),
                    //           getCard(price[index - 1], imagepath[index - 1],
                    //               description[index - 1], index),
                    //         ],
                    //       ),
                    //     );
                    //   }
                  },
                  scrollDirection: Axis.vertical,
                ),
              ),
            )
            //items
          ],
        ),
      ),
    );
  }

  void favChanged(int index, int i) =>
      setState(() => onTap[index][i] = !onTap[index][i]);
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

  List<Widget> getCard(price, imagepath, description, int index) {
    List<Widget> lst = [];
    for (var i = 0; i < 2; i++) {
      lst.add(
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return DescriptionPage(favChanged, index, i, onTap[index][i]
                      // {
                      //   'price': price,
                      //   'description': description,
                      //   'imagepath': imagepath,
                      //   'isFav': onTap[index][i],
                      // }
                      );
                },
              ),
            ).then((value) => widget.changePage(value));
          },
          child: Card(
            margin: EdgeInsets.all(10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 10,
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        alignment: AlignmentDirectional.topStart,
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(right: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                '\$',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 13, 216, 223),
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                '${price}',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 27),
                        child: InkWell(
                          onTap: () => favChanged(index, i),
                          child: Icon(
                            onTap[index][i] == false
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: Colors.red,
                          ),
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
                    fit: BoxFit.cover,
                  ),
                ),
                //image in card
                Container(
                  padding: EdgeInsets.fromLTRB(12, 5, 12, 8),
                  width: 140,
                  child: Text(
                    description,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ),
                //description
              ],
            ),
          ),
        ),
      );
    }
    return lst;
  }
}
