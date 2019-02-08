import 'package:flutter/material.dart';

class BlogPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // TITLE SECTION WIDGET
    Widget titleSection = Container(
      padding: EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text('My Text Heading', style: new TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.red),),
                ),
                Text('My Subtitle Heading', style: new TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.red))
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red,),
          Text("41")
        ],
      ),
    );


    // To get the Color of the Context
    Color color = Theme.of(context).primaryColor;

    // BUTTON SECTION
    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ]
      ),
    );

    // DESCRIPTION SECTION WIDGET
    Widget descriptionSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
    );

    // Widget for Image from the Internet
    Widget imageSection = Image.network(
      'https://picsum.photos/400/600',
      height: 250,
      width: 600,
      fit: BoxFit.cover,
    );

    return new Scaffold(
        appBar: new AppBar(title: new Text('Flutter Layouts Demo'),
                            backgroundColor: Colors.red,),
    body:ListView(
    children: <Widget>[
    imageSection,
    titleSection,
    buttonSection,
    descriptionSection
      ],
    )
    );
  }

  // To Build the Buttons
  Column _buildButtonColumn(Color color, IconData icon, String label){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(icon, color: color),
        Container(
          margin: EdgeInsets.only(top: 8.0),
          child: Text(label, style: new TextStyle(fontSize: 16),),
        )
      ],
    );
  }

}

