import 'package:flutter/material.dart';
import 'package:layouts_flutter/Ui1.dart';
import 'package:layouts_flutter/alignment.dart';
import 'package:layouts_flutter/container.dart';
import 'package:layouts_flutter/view.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple[400],
        accentColor: Colors.orange[300],
        textTheme: TextTheme(
          body1: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Building Layouts in Flutter'),
        ),
        body: Center(
          child: Text(
            'Hello Flutter Layouts',
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
            print('You Rang'),
          },
          child: Icon(Icons.lightbulb_outline),
        ),
        persistentFooterButtons: [
          IconButton(icon: Icon(Icons.add_comment), onPressed: () {}),
          IconButton(icon: Icon(Icons.add_alarm), onPressed: () {}),
          IconButton(icon: Icon(Icons.add_location), onPressed: () {}),
        ],
      ),
    );
  }
}
