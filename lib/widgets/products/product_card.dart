import 'package:flutter/material.dart';
import 'package:flutter_products_app/widgets/products/price_tag.dart';
import 'package:flutter_products_app/widgets/products/address_tag.dart';
import 'package:flutter_products_app/widgets/ui/title_default.dart';

class ProductCard extends StatelessWidget {
  final Map product;
  final int productIndex;
  ProductCard(this.product, this.productIndex);

  Widget _buildTitlePriceRow() {
    return Container(
      padding: EdgeInsets.only(top: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TitleDefault(product['title']),
          SizedBox(
            width: 8.0,
          ),
          PriceTag(product['price'].toString()),
        ],
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          color: Colors.black45,
          icon: Icon(Icons.info),
          onPressed: () => Navigator.pushNamed<bool>(
              context, '/product/' + productIndex.toString()),
        ),
        IconButton(
          color: Colors.red,
          icon: Icon(Icons.favorite_border),
          onPressed: () => Navigator.pushNamed<bool>(
              context, '/product/' + productIndex.toString()),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(product['image']),
          _buildTitlePriceRow(),
          AddressTag(),
          _buildActionButtons(context),
        ],
      ),
    );
  }
}
