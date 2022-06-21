import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Container(
              child: productList(),
            ),
          ),
          Container(
            height: 80,
            color: Colors.yellow,
            child: Text("Container 2"),
          ),
        ],
      ),
    );
  }
}

Widget productList() {
  return ListView(
    children: <Widget>[
      productItem(), //(context, "BeoPlay Speaker", "755", "assets/product-1.png"),
      productItem(), //(context, "Leather Wristwatch", "450", "assets/product-2.png"),
      productItem(), //(context, "Smart Bluetooth Speaker", "100", "assets/product-3.png"),
      productItem(), //(context, "Smart Luggage", "100", "assets/product-4.png"),
      productItem(), //(context, "Smartphone Case", "99", "assets/product-5.png"),
      productItem(), //(context, "Speakers Stand", "49", "assets/product-6.png"),
      productItem(), //(context, "AirPods", "199", "assets/product-7.png"),
    ],
  );
}

Widget productItem() {
  return Container(
    height: 120,
    margin: EdgeInsets.all(5),
    child: Row(
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          margin: EdgeInsets.all(10),
          child: Image.asset(
            "assets/product-1.png",
            fit: BoxFit.fitWidth,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 20,
            left: 10,
          ),
          child: Column(
            children: <Widget>[
              Text("Titulo do produto"),
              Text(
                "\$200",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: FlatButton(
                        child: Text("+"),
                        onPressed: () => {},
                      ),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: Text("1"),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: FlatButton(
                        child: Text("-"),
                        onPressed: () => {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
