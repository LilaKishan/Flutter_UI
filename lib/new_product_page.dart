import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shoping/add_user.dart';

class NewProductPage extends StatefulWidget {
  @override
  State<NewProductPage> createState() => _NewProductPageState();
}

class _NewProductPageState extends State<NewProductPage> {
  var url = 'https://63f9b91a897af748dcc28c14.mockapi.io/Product';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Products'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(
                  MaterialPageRoute(
                    builder: (context) => AddUser(null),
                  ),
                )
                    .then(
                  (value) {
                    setState(() {
                      getData();
                    });
                  },
                );
              },
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 24,
              ),
            ),
          )
        ],
      ),
      body: FutureBuilder<http.Response>(
        builder: (context, snapshot) {
          if (snapshot.data != null && snapshot.hasData) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    children: [
                      getCard(
                        jsonDecode(snapshot.data!.body.toString())[index]
                                ['price']
                            .toString(),
                        jsonDecode(snapshot.data!.body.toString())[index]
                                ['productImg']
                            .toString(),
                        jsonDecode(snapshot.data!.body.toString())[index]
                                ['description']
                            .toString(),
                        jsonDecode(snapshot.data!.body.toString())[index]['id']
                            .toString(),
                        jsonDecode(snapshot.data!.body.toString())[index]
                                ['productName']
                            .toString(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .push(
                                  MaterialPageRoute(
                                    builder: (context) => AddUser(
                                        jsonDecode(snapshot.data!.body)[index]),
                                  ),
                                )
                                    .then(
                                  (value) {
                                    setState(() {});
                                  },
                                );
                              },
                              child: Text("Edit")),
                          //Edit
                          SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                            child: Text('Delete'),
                            onPressed: () => showDialog(
                              context: context,
                              builder: (context) {
                                return Container(
                                  child: AlertDialog(
                                      title: Text('Are you sure?'),
                                      actions: [
                                        TextButton(
                                            onPressed: () =>
                                                Navigator.of(context).pop(),
                                            child: Text('No')),
                                        TextButton(
                                            onPressed: () {
                                              deleteUser((jsonDecode(snapshot
                                                          .data!.body
                                                          .toString())[index]
                                                      ['id']))
                                                  .then(
                                                (value) {
                                                  setState(() {
                                                    getData();
                                                    Navigator.of(context).pop();
                                                  });
                                                },
                                              );
                                            },
                                            child: Text('Yes'))
                                      ]),
                                );
                              },
                            ),
                          )
                          //delete
                        ],
                      )
                    ],
                  ),
                );
              },
              itemCount: jsonDecode(snapshot.data!.body.toString()).length,
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
        future: getData(),
      ),
    );
  }

  Widget getCard(price, imagepath, description, index, productName) {
    return Card(
      margin: EdgeInsets.all(13),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            child: Column(
              children: [
                // Container(child: Text(index.toString())),
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Image.network(
                    imagepath,
                    // height: 80,
                    // width: 130,
                    fit: BoxFit.cover,
                  ),
                ),
                //image in card
                Container(
                  padding: EdgeInsets.fromLTRB(12, 5, 12, 8),
                  // width: 140,
                  child: Text(
                    productName,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                //productname
                Container(
                  padding: EdgeInsets.fromLTRB(12, 5, 12, 8),
                  // width: 140,
                  child: Text(
                    description,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ),
                //description
                Container(
                  alignment: AlignmentDirectional.topStart,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only(right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: AlignmentDirectional.center,
                        child: Text(
                          '\$',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 13, 216, 223),
                          ),
                        ),
                      ),
                      Container(
                        alignment: AlignmentDirectional.center,
                        child: Text(
                          '${price}',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                //price
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Future<http.Response> getData() async {
    var response = await http.get(Uri.parse(url));
    return response;
  }

  Future<void> deleteUser(id) async {
    var response = await http.delete(Uri.parse('${url}/${id}'));
  }
}
