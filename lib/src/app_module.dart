import 'package:app_base/src/modules/home/ui/android/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.teal,
          primaryColor: Colors.teal[600],
          scaffoldBackgroundColor: Colors.teal[600],
          fontFamily: 'Roboto'
          // brightness: Brightness.dark,
          ),
      debugShowCheckedModeBanner: false,
      title: "Ecommerce",
      home: HomeView(),
    );
  }
}
