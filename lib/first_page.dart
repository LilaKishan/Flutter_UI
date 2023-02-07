import 'package:flutter/material.dart';
import 'package:shoping/cart_page.dart';
import 'package:shoping/demo.dart';
import 'package:shoping/description_page.dart';

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  bool onTap = false;
  int _selectIndex = 0;

  List<String> price = ['250', '180', '230', '190'];
  List<String> description = [
    '''Nike Jorden:'Why not?' Zer0.3 PF''',
    'Nike Joyride CC3 Setter',
    'Nike Jorden Aerospace 720',
    'Nike Air Jorden Retro 7 SE'
  ];
  List<String> imagepath = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/4.png'
  ];

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
                    if (index % 2 == 0) {
                      return Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            getCard(price[index], imagepath[index],
                                description[index]),
                            getCard(price[index + 1], imagepath[index + 1],
                                description[index + 1]),
                          ],
                        ),
                      );
                    } else {
                      return Container(
                        margin: EdgeInsets.all(2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            getCard(price[index], imagepath[index],
                                description[index]),
                            getCard(price[index - 1], imagepath[index - 1],
                                description[index - 1]),
                          ],
                        ),
                      );
                    }
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
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return Demo();
            },
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
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
                      onTap: () {
                        setState(() {
                          if (onTap == false) {
                            onTap = true;
                          } else {
                            onTap = false;
                          }
                        });
                      },
                      child: Icon(
                        onTap == false ? Icons.favorite : Icons.favorite_border,
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
    );
  }
}
