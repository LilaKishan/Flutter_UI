import 'package:flutter/material.dart';
import 'package:shoping/first_page.dart';

List<String> list1 = <String>['43', '44', '45', '46'];
List<String> list2 = <String>['Blue', 'Black', 'White'];
List<String> list3 = <String>['1', '2', '3', '4'];

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key});

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  String dropdownValue1 = list1.first;
  String dropdownValue2 = list2.first;
  String dropdownValue3 = list3.first;

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
                      alignment: AlignmentDirectional.topStart,
                      margin: EdgeInsets.only(left: 20),
                      child: CircleAvatar(
                        radius: 15,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
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
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
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
              margin: EdgeInsets.fromLTRB(20, 5, 20, 10),
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
                    margin: EdgeInsets.only(top: 5),
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
              margin: EdgeInsets.only(left: 5),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Image.asset(
                        'assets/images/gs2.jpg',
                        fit: BoxFit.fill,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 5),
                      child: CircleAvatar(
                        child: Icon(
                          Icons.person,
                          color: Color.fromARGB(255, 13, 216, 223),
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //image
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 5,
                    child: Container(
                      child: Container(
                        child: Column(children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            alignment: AlignmentDirectional.topStart,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    textAlign: TextAlign.left,
                                    'Description',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    // textAlign: TextAlign.left,
                                    '''Jorden 'Why Not?' Zer0.3 PF,Jorden 'Why Not?' Zer0.3 PF,Jorden 'Why Not?' Zer0.3 PF,Jorden 'Why Not?' Zer0.3 PF,Jorden 'Why Not?' Zer0.3 PF,Jorden 'Why Not?' Zer0.3 PF,Jorden 'Why Not?' Zer0.3 PF,''',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //description  of item
                          Container(
                            margin: EdgeInsets.only(left: 15),
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
                                  //  height: 20,
                                  child: Row(
                                    children: [
                                      Text(
                                        '\$',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color:
                                              Color.fromARGB(255, 13, 216, 223),
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
                            margin: EdgeInsets.fromLTRB(15, 10, 0, 10),
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
                                  //height: 20,
                                  child: Row(
                                    children: [
                                      Text(
                                        '\$',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color:
                                              Color.fromARGB(255, 13, 216, 223),
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
                                  //height: 20,
                                  child: Row(
                                    children: [
                                      Text(
                                        '\$',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color:
                                              Color.fromARGB(255, 13, 216, 223),
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
                          Container(
                            child: Card(
                              margin: EdgeInsets.all(20),
                              color: Color.fromARGB(255, 221, 241, 250),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              elevation: 3,
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Row(children: [
                                        Expanded(
                                          child: Container(
                                            alignment:
                                                AlignmentDirectional.center,
                                            child: Text('Size'),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            alignment:
                                                AlignmentDirectional.center,
                                            child: Text('Color'),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            alignment:
                                                AlignmentDirectional.center,
                                            child: Text('QTY'),
                                          ),
                                        ),
                                      ]),
                                    ),
                                    Container(
                                      child: Row(children: [
                                        Expanded(
                                          child: Container(
                                            alignment:
                                                AlignmentDirectional.center,
                                            margin: EdgeInsets.only(left: 20),
                                            child: DropdownButton<String>(
                                              value: dropdownValue1,
                                              style: const TextStyle(
                                                  color: Colors.deepPurple),
                                              onChanged: (String? value) {
                                                setState(() {
                                                  dropdownValue1 = value!;
                                                });
                                              },
                                              items: list1.map<
                                                      DropdownMenuItem<String>>(
                                                  (String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value),
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            alignment:
                                                AlignmentDirectional.center,
                                            margin: EdgeInsets.only(left: 20),
                                            child: DropdownButton<String>(
                                              value: dropdownValue2,
                                              style: const TextStyle(
                                                  color: Colors.deepPurple),
                                              onChanged: (String? value) {
                                                setState(() {
                                                  dropdownValue2 = value!;
                                                });
                                              },
                                              items: list2.map<
                                                      DropdownMenuItem<String>>(
                                                  (String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value),
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            alignment:
                                                AlignmentDirectional.center,
                                            margin: EdgeInsets.only(left: 20),
                                            child: DropdownButton<String>(
                                              value: dropdownValue3,
                                              style: const TextStyle(
                                                  color: Colors.deepPurple),
                                              onChanged: (String? value) {
                                                setState(() {
                                                  dropdownValue3 = value!;
                                                });
                                              },
                                              items: list3.map<
                                                      DropdownMenuItem<String>>(
                                                  (String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value),
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          //selection card
                          Container(
                            alignment: AlignmentDirectional.center,
                            margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                            child: Container(
                                color: Color.fromARGB(255, 13, 216, 223),
                                child: Row(
                                  children: [
                                    Container(
                                      alignment: AlignmentDirectional.center,
                                      child: Text("Add To Bag"),
                                      margin: EdgeInsets.all(10),
                                    ),
                                    Container(
                                      alignment: AlignmentDirectional.center,
                                      child: Icon(Icons.shopping_bag_outlined),
                                      margin: EdgeInsets.only(left: 10),
                                    )
                                  ],
                                )),
                          ),
                          //add  to beg button
                        ]),
                      ),
                    ),
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
