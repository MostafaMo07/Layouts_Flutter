import 'package:flutter/material.dart';

class MyApp4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('List And Grid View')),
          //backgroundColor: Colors.indigo,
          body: Home()),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;
    return Container(
      width: sizeX,
      height: sizeY,
      child: Stack(
        //fit: StackFit.expand,
        children: showPizzaLayout(50, 50),
      ),
    );
  }

  List<Widget> createSquares(int numSqaures) {
    int i = 0;
    List colors = [
      Colors.amber,
      Colors.deepPurple,
      Colors.deepOrange,
      Colors.indigo,
      Colors.lightBlue
    ];
    List<Widget> squares = <Widget>[];
    squares.add(Container(color: Colors.black));
    while (i < numSqaures) {
      Align sqaure = Align(
          alignment: Alignment.center,
          child: Container(
            color: colors[i],
            width: 60.0 * (numSqaures - i),
            height: 60.0 * (numSqaures - i),
            child: Text(i.toString()),
          ));
      i++;
      squares.add(sqaure);
    }
    return squares;
  }

  List<Widget> showPizzaLayout(double sizeX, double sizeY) {
    List<Widget> layoutChildern = <Widget>[];
    Container backGround = Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage('http://bit.ly/pizzaimage'),
              fit: BoxFit.fitHeight)),
    );
    layoutChildern.add(backGround);
    Positioned pizzaCard = Positioned(
      top: sizeY / 20,
      left: sizeX / 20,
      child: Card(
          elevation: 12,
          color: Colors.white70,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              Text(
                'Pizza Margherita',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange[800],
                ),
              ),
            ],
          )),
    );
    layoutChildern.add(pizzaCard);
    return layoutChildern;
  }
}
