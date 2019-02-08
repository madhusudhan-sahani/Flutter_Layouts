import 'package:flutter/material.dart';
// import './pages/blog_page.dart';
import './pages/chat_app.dart';

void main()=> runApp(MaterialApp(
  title: 'Flutter Demo Layouts',
  theme: new ThemeData(
    primarySwatch: Colors.red, primaryColor: Colors.red
  ),
  debugShowCheckedModeBanner: false,
  home:ChatApp()));