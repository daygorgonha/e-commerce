import 'package:flutter/material.dart';
import 'package:layouts_no_flutter/widgets/category/category-list.widget.dart';
import 'package:layouts_no_flutter/widgets/product/product-list.widget.dart';

import 'package:layouts_no_flutter/widgets/search-box.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            SearchBox(),
            SizedBox(
              height: 30,
            ),
            Text(
              "Categories",
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 90,
              child: CategoryList(),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Best Selling",
                  style: Theme.of(context).textTheme.headline5,
                ),
                Container(
                  height: 20,
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    child: Text("See All"),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 350,
              child: ProductList(scrollDirection: Axis.horizontal),
            ),
          ],
        ),
      ),
    );
  }
}
