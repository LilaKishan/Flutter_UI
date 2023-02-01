import 'package:flutter/material.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 241, 250),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 50,
              margin: EdgeInsets.all(10),
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
                            decoration: InputDecoration(hintText: "Find Shoes",border: InputBorder.none),
                          ),
                        ),
                      )),
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)
                        ),
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
            )
          ],
        ),
      ),
    );
  }
}
