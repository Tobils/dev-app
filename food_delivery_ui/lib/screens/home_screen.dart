import 'package:flutter/material.dart';
import 'package:food_delivery_ui/data/data.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.account_circle),
          iconSize: 36.0,
          onPressed: () {},
        ),
        title: Text("Food Delivery"),
        actions: <Widget>[
          FlatButton(
            child: Text('Cart (${currentUser.cart.length})',
                style: TextStyle(color: Colors.white, fontSize: 20.0)),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(width: 0.8)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(
                              width: 0.8,
                              color: Theme.of(context).primaryColor)),
                      hintText: "Cari Makanan atau Restoran",
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30.0,
                      ),
                      suffixIcon: IconButton(
                          icon: Icon(Icons.clear), onPressed: () {}))))
        ],
      ),
    );
  }
}
