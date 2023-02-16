import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:shoping/cart_page.dart';
import 'package:shoping/first_page.dart';
import 'package:shoping/constdata.dart';

List<String> list1 = <String>['43', '44', '45', '46'];
List<String> list2 = <String>['Blue', 'Black', 'White'];
List<String> list3 = <String>['1', '2', '3', '4'];
List<Color> colors = [
  Colors.red,
  Colors.blue,
  Colors.yellow,
  Colors.brown,
];

class DescriptionPage extends StatefulWidget {
  @required
  //Map<String, dynamic> data;
  Function favChanged;
  int index, i;
  bool isFav;
  // bool isFavourite;
  DescriptionPage(this.favChanged, this.index, this.i, this.isFav, {super.key});

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  String dropdownValue1 = list1.first,
      dropdownValue2 = list2.first,
      dropdownValue3 = list3.first;
  Color dropdownValue4 = colors.first;

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
                            Navigator.of(context).pop(0);
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
              margin: EdgeInsets.fromLTRB(20, 2, 15, 0),
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
                      description[widget.index],
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 33,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'NotoSans',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text(
                      textAlign: TextAlign.left,
                      '''Men's Sports Shoes ''',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'NotoSans',
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
                          child: InkWell(
                            onTap: () {
                              widget.favChanged(widget.index, widget.i);
                              setState(() => widget.isFav = !widget.isFav);
                            },
                            child: Icon(
                              widget.isFav == false
                                  ? Icons.favorite_border
                                  : Icons.favorite,
                              color: Colors.red,
                            ),
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
              //margin: EdgeInsets.only(left: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 15),
                    child: Image.asset(
                      imagepath[widget.index],
                      fit: BoxFit.fitWidth,
                      height: 160,
                      width: 300,
                      alignment: Alignment.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/1665/1665761.png',
                      width: 32,
                      fit: BoxFit.cover,
                      alignment: Alignment.centerRight,
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
                                      fontFamily: 'NotoSans',
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Text(
                                  // textAlign: TextAlign.left,
                                  '''Jorden 'Why Not?' Zer0.3 PF,Jorden 'Why Not?' Zer0.3 PF,Jorden 'Why Not?' Zer0.3 PF,Jorden 'Why Not?' Zer0.3 PF,Jorden 'Why Not?' Zer0.3 PF,Jorden 'Why Not?' Zer0.3 PF,Jorden 'Why Not?' Zer0.3 PF,''',
                                  style: TextStyle(
                                      fontFamily: 'NotoSans',
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
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: 'NotoSans',
                                    ),
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
                                        fontFamily: 'NotoSans',
                                        color:
                                            Color.fromARGB(255, 13, 216, 223),
                                      ),
                                    ),
                                    Text(
                                      price[widget.index],
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontFamily: 'NotoSans',
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
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: 'NotoSans',
                                    ),
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
                                      price[widget.index],
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
                                borderRadius: BorderRadius.circular(25)),
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
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: DropdownButtonHideUnderline(
                                            child: Container(
                                              alignment:
                                                  AlignmentDirectional.center,
                                              margin: EdgeInsets.only(left: 20),
                                              child: DropdownButton<String>(
                                                value: dropdownValue1,
                                                icon: Icon(Icons
                                                    .keyboard_arrow_down_outlined),
                                                iconEnabledColor:
                                                    Color.fromARGB(
                                                        255, 13, 216, 223),
                                                iconDisabledColor:
                                                    Color.fromARGB(
                                                        255, 13, 216, 223),
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    dropdownValue1 = value!;
                                                  });
                                                },
                                                items: list1.map<
                                                        DropdownMenuItem<
                                                            String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Text(
                                                      value,
                                                      style: TextStyle(
                                                          fontSize: 23),
                                                    ),
                                                  );
                                                }).toList(),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            alignment:
                                                AlignmentDirectional.center,
                                            margin: EdgeInsets.only(left: 20),
                                            child: DropdownButton<Color>(
                                              value: colors.first,
                                              icon: Icon(Icons
                                                  .keyboard_arrow_down_outlined),
                                              iconEnabledColor: Color.fromARGB(
                                                  255, 13, 216, 223),
                                              onChanged: (Color? value) {
                                                setState(() {
                                                  dropdownValue4 = value!;
                                                });
                                              },
                                              items: colors
                                                  .map<DropdownMenuItem<Color>>(
                                                      (value) {
                                                return DropdownMenuItem<Color>(
                                                    value: value,
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                      child: Container(
                                                        //height: 50,
                                                        color: value,
                                                      ),
                                                    ));
                                              }).toList(),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: DropdownButtonHideUnderline(
                                            child: Container(
                                              alignment:
                                                  AlignmentDirectional.center,
                                              margin: EdgeInsets.only(left: 20),
                                              child: DropdownButton<String>(
                                                value: dropdownValue3,
                                                icon: Icon(Icons
                                                    .keyboard_arrow_down_outlined),
                                                iconEnabledColor:
                                                    Color.fromARGB(
                                                        255, 13, 216, 223),
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    dropdownValue3 = value!;
                                                  });
                                                },
                                                items: list3.map<
                                                        DropdownMenuItem<
                                                            String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Text(
                                                      value,
                                                      style: TextStyle(
                                                          fontSize: 23),
                                                    ),
                                                  );
                                                }).toList(),
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
                          ),
                        ),
                        //selection card
                        InkWell(
                          onTap: () {
                            checkOut.add(widget.index);
                            Navigator.of(context).pop(3);
                          },
                          child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 13, 216, 223),
                              ),
                              margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text(
                                      "Add To Bag",
                                      style: TextStyle(
                                        fontFamily: 'NotoSans',
                                        color: Colors.white,
                                      ),
                                    ),
                                    margin: EdgeInsets.all(10),
                                  ),
                                  Container(
                                    child: Icon(Icons.shopping_bag_outlined,
                                        color: Colors.white),
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
            )
          ],
        ),
      ),
    );
  }
}
