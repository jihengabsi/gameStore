import 'package:gamestore/form.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  //var
  String image;
  String title;
  String price;
  Details(this.image, this.title, this.price);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(children: [
          //game image
          Image.asset(
            image,
            width: 350,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum neque justo, commodo a semper vel, lacinia consectetur purus. Pellentesque nec lobortis magna. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ultrices condimentum sapien, eu dictum leo ornare ac. Duis odio justo, pulvinar ut ultricies nec, bibendum et est. Etiam quam ligula, dignissim in rhoncus in, ultrices nec sem. Nunc et fringilla mi, quis vehicula est. Ut cursus vitae dui id pulvinar. Mauris lobortis erat sit amet nunc posuere facilisis. Maecenas lobortis tempor est, fringilla semper felis. Maecenas elementum ex vel ultricies gravida.",
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            price,
            textScaleFactor: 3,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Formu(),
                  ));
            },
            label: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Acheter',
                style: TextStyle(fontSize: 35),
              ),
            ),
            icon: const Icon(Icons.shopping_basket),
          )
        ]),
      ),
    );
  }
}
