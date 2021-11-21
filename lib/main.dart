import 'package:gamestore/details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("G-Store Esprit"),
      ),
      body: Column(
        children: [
          GameCard("dmc5.jpg", "Devils May Cry 5", 200),
          GameCard("fifa.jpg", "FIFA 22", 100),
          GameCard("rdr2.jpg", "Red Dead redemption", 150),
          GameCard("nfs.jpg", "Need For Speed Heat", 220),
          GameCard("re8.jpg", "Resident Evil VIII", 180),
        ],
      ),
    ));
  }
}

class GameCard extends StatelessWidget {
  //var
  final String image;
  final String title;
  final double price;

  //constructor
  const GameCard(this.image, this.title, this.price);
  //const GameCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  Details('assets/$image', '$title', '$price TND'),
            ));
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              //game image
              Image.asset(
                'assets/$image',
                width: 200,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '$title',
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '$price TND',
                      textScaleFactor: 2,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
