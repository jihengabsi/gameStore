import 'package:flutter/material.dart';

class ProductInfo2 extends StatelessWidget {
  String _image;
  int _price;

  ProductInfo2(this._image, this._price, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Column(
            children: [
              Icon(
                Icons.delete_forever,
                size: 50,
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 20, 10),
            child: Image.asset(_image, width: 150, height: 94),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(_price.toString() + " TND", textScaleFactor: 2)],
          )
        ],
      ),
    );
  }
}
