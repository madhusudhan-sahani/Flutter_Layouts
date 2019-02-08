import 'package:flutter/material.dart';

const String _name = "Your Name";

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Friendly Chat'), backgroundColor: Colors.green,),
      body: new ChatScreen()
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<ChatMessage> _messages = <ChatMessage>[];
  final TextEditingController _textController = new TextEditingController();

  @override

  Widget build(BuildContext context) {
    return _buildTextComposer();
  }

  // TEXT COMPOSER
  Widget _buildTextComposer() {
    return new Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: <Widget>[
          new Flexible(
            child: new ListView.builder(
              padding: new EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, int index) => _messages[index],
              itemCount: _messages.length,
            ),
          ),
          new Divider(
            height: 3.0,
          ),
          new Container(
            decoration: new BoxDecoration(color: Theme.of(context).cardColor),
            child: _textComposerWidget(),
          )
        ],
      )
    );
  }

  Widget _textComposerWidget() {
    return new IconTheme(
        data: new IconThemeData(color: Colors.grey),
        child: new Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: new Row(
            children: <Widget>[
              new Flexible(
                child: new TextField(
                    decoration: new InputDecoration.collapsed(
                        hintText: "Send a Message"),
                    onSubmitted: _handleSubmitted,
                    controller: _textController),
              ),
              new Container(
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                child: new IconButton(
                    icon: new Icon(Icons.send),
                    onPressed: () => _handleSubmitted(_textController.text)),
              )
            ],
          ),
        )
    );
  }

  // HANDLING MESSAGE SENT
  void _handleSubmitted(String text) {
    _textController.clear();
    ChatMessage message = new ChatMessage(                         //new
      message: text,                                                  //new
    );                                                             //new
    setState(() {                                                  //new
      _messages.insert(0, message);                                //new
    });
  }

}

class ChatMessage extends StatelessWidget {
  ChatMessage({this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            margin: const EdgeInsets.only(right: 15.0),
            child: new CircleAvatar(child: Icon(Icons.verified_user, color: Colors.white,), backgroundColor: Colors.green,)
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(_name, style: Theme.of(context).textTheme.subhead),
              new Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: new Text(message),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


