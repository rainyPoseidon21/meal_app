import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {

  // final categoryId;
  // final categoryTitle;

  //CategoryMealScreen(this.categoryId,this.categoryTitle);


  @override
  Widget build(BuildContext context) {

    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String,String>;
    final categoryTitle = routeArgs["title"];
    final categoryId = routeArgs["id"];

    return Scaffold(
          appBar: AppBar(title: Text(categoryTitle)),

          body: Center(
        child: Text("The Recipe For the Category"),
      ),
    );
  }
}