import 'package:flutter/material.dart';
import 'package:gamestore/product_info2.dart';
import 'product_info.dart';

class Panier extends StatefulWidget {
  const Panier({Key? key}) : super(key: key);

  @override
  _PanierState createState() => _PanierState();
}

class _PanierState extends State<Panier> {
  //var
  final List<Game> games = const [
    const Game("assets/images/dmc5.jpg", "Devil May Cry 5", 200),
    const Game("assets/images/re8.jpg", "Resident Evil VIII", 200),
    const Game("assets/images/nfs.jpg", "Need For Speed Heat", 100)
  ];

  //init
  @override
  void initState() {
    super.initState();
    //TO DO
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Panier"),
      ),
      body: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.red),
                ),
              ),
              margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Total : 500 TND",
                    textScaleFactor: 1.5,
                  )
                ],
              )),
          Expanded(
              child: ListView.builder(
            itemCount: games.length,
            itemBuilder: (context, index) {
              return ProductInfo2(games[index].image, games[index].price);
            },
          ))
        ],
      ),
    );
  }
}

//ENTITY
class Game {
  final String image;
  final String title;
  final int price;

  const Game(this.image, this.title, this.price);
}
