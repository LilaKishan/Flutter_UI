import 'package:flutter/material.dart';
import 'package:shoping/first_page.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key});

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
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
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: CircleAvatar(
                      radius: 15,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return FirstPage();
                              },
                            ),
                          );
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      backgroundColor: Color.fromARGB(255, 13, 216, 223),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 280),
                    child: CircleAvatar(
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 25,
                      ),
                      backgroundColor: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            //menu
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
              //height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      textAlign: TextAlign.left,
                      'Nike ',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black26),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text(
                      textAlign: TextAlign.left,
                      '''Jorden 'Why Not?' Zer0.3 PF''',
                      style:
                          TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text(
                      textAlign: TextAlign.left,
                      'Check and Pay Your Shoes ',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black26),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Text(
                          textAlign: TextAlign.left,
                          '1 / 7 ',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.heart_broken,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //description
            Container(
              margin: EdgeInsets.all(5),
              child: Row(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/images/gs2.jpg',
                      fit: BoxFit.cover,
                      height: 200,
                      width: 350,
                      alignment: Alignment.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: CircleAvatar(
                      child: Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 13, 216, 223),
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //image
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 5,
                child: Container(
                  // color: Colors.white,
                  child: Container(
                    child: Column(children: [
                      Container(
                        color: Colors.red,
                        child: Column(
                          children: [
                            Text(
                              textAlign: TextAlign.left,
                              'Description',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              textAlign: TextAlign.left,
                              '''Jorden 'Why Not?' Zer0.3 PF''',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      //description  of item
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.arrow_forward_ios_sharp,
                                size: 18,
                                color: Color.fromARGB(255, 13, 216, 223),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Text(
                                  'Retail Price',
                                  style: TextStyle(fontSize: 17),
                                )),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              height: 20,
                              child: Row(
                                children: [
                                  Text(
                                    '\$',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Color.fromARGB(255, 13, 216, 223),
                                    ),
                                  ),
                                  Text(
                                    '180',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  //color: Colors.red,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      //retail prize
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.arrow_forward_ios_sharp,
                                size: 18,
                                color: Color.fromARGB(255, 13, 216, 223),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Text(
                                  'Est. Resell Price',
                                  style: TextStyle(fontSize: 17),
                                )),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              height: 20,
                              child: Row(
                                children: [
                                  Text(
                                    '\$',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Color.fromARGB(255, 13, 216, 223),
                                    ),
                                  ),
                                  Text(
                                    '180',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  //color: Colors.red,
                                  ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Text(
                                '-',
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              height: 20,
                              child: Row(
                                children: [
                                  Text(
                                    '\$',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Color.fromARGB(255, 13, 216, 223),
                                    ),
                                  ),
                                  Text(
                                    '180',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  //color: Colors.red,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      //es.resell prize
                      Container(),
                      //selection card
                      Container(),
                      //add  to beg button
                    ]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
