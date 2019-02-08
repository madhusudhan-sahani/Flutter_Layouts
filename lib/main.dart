import 'package:flutter/material.dart';
import './pages/blog_page.dart';

void main()=> runApp(MaterialApp(
  title: 'Flutter Demo Layouts',
  theme: new ThemeData(
    primarySwatch: Colors.red, primaryColor: Colors.red
  ),
  debugShowCheckedModeBanner: false,
  home: new Scaffold(
  appBar: new AppBar(title: new Text('Flutter Layouts Demo'),
          backgroundColor: Colors.red,),
  body:BlogPage()
)));