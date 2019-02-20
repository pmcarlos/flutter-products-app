import 'package:flutter/material.dart';

class ProductCreatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Create a product'),
        onPressed: () {
          showBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Center(
                child: Text('Modal create'),
              );
            },
          );
        },
      ),
    );
  }
}
