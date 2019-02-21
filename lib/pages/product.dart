import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_products_app/widgets/ui/title_default.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;
  final double price;

  ProductPage(this.title, this.imageUrl, this.price, this.description);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                Image.asset(imageUrl),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: TitleDefault(title),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'San Andrés Cholula, Puebla',
                      style: TextStyle(
                        fontFamily: 'Oswald',
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          '|',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )),
                    Text(
                      '\$$price',
                      style: TextStyle(
                        fontFamily: 'Oswald',
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    description,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
