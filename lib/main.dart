import 'package:flutter/material.dart';
import 'package:meal_app/categories_screen.dart';
import './category_meals_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deli Meals',
      theme: ThemeData(
        
        primarySwatch: Colors.pink,
        //visualDensity: VisualDensity.adaptivePlatformDensity,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: "Raleway",
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
          body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
          title: TextStyle(fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "RobotoCondensed",
                          color: Color.fromRGBO(20, 51, 51, 1)
                          ),
        )
      ),
      home: CategoriesScreen(),
      routes: {"/categories-meal": (ctx) => CategoryMealScreen()},
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Deli Meals"),
        ),
        body: Center(child: Text("Navugation Bar")));
  }
}
