import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddUser extends StatefulWidget {
  AddUser(this.map);

  Map? map;
  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  @override
  void initState() {
    super.initState();
    productNameController.text =
        widget.map == null ? "" : widget.map!['productName'].toString();
    imgPathController.text =
        widget.map == null ? "" : widget.map!['productImg'].toString();
    descriptionController.text =
        widget.map == null ? "" : widget.map!['description'].toString();
    priceController.text =
        widget.map == null ? '' : widget.map!['price'].toString();
  }

  TextEditingController productNameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  
  TextEditingController imgPathController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            TextFormField(
              controller: productNameController,
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value == null || value.trim().length == 0) {
                  return 'Enter valid productName';
                }
                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter  ProductName",
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: descriptionController,
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value == null || value.trim().length == 0) {
                  return 'Enter valid Descrption';
                }
                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Description',
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: imgPathController,
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value == null || value.trim().length == 0) {
                  return 'Enter valid path';
                }
                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'productImgpath',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: priceController,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.trim().length == 0) {
                  return 'Enter valid price';
                }
                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter  Product price",
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() async {
                  if (_formKey.currentState!.validate()) {
                    if (widget.map == null) {
                      addUser().then(
                        (value) => Navigator.of(context).pop(),
                      );
                    } else {
                      updateUser(widget.map!['id']).then(
                        (value) => Navigator.of(context).pop(),
                      );
                    }
                  }
                });
              },
              child: Text('Add'),
            )
          ]),
        ),
      ),
    );
  }

  Future<void> addUser() async {
    Map map = {};
    map['productName'] = productNameController.text;
    map['description'] = descriptionController.text;
    map['productImg'] = imgPathController.text;
    map['price'] = priceController.text;
    var response1 = await http.post(
        Uri.parse("https://63f9b91a897af748dcc28c14.mockapi.io/Product"),
        body: map);
    print(response1.body);
  }

  // Future<void> deleteUser(id) async {
  //   var response = await http.delete(
  //       Uri.parse("https://631327f4a8d3f673ffc55a53.mockapi.io/student/${id}"));
  // }

  Future<void> updateUser(id) async {
    Map map = {};
    map['productName'] = productNameController.text;
    map['description'] = descriptionController.text;
    map['productImg'] = imgPathController.text;
    map['price'] = priceController.text;
    var response1 = await http.put(
        Uri.parse("https://63f9b91a897af748dcc28c14.mockapi.io/Product/${id}"),
        body: map);
    print(response1.body);
  }
}
