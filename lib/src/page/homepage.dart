import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoflutter/src/components/list-item.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Marcket-place"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {
              log("onpressed search");
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.white,
            onPressed: () {
              log("onpressed search");
            },
          )
        ],
      ),
      drawer: Drawer(),
      body: ListView(
        children: <Widget>[
          ListItem(
            tag: "1",
          ),
          ListItem(
            tag: "2",
          ),
          ListItem(
            tag: "3",
          ),
          ListItem(tag: "4"),
          ListItem(tag: "5")
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
