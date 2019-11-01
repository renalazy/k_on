import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'K-ON',
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final makeBottom = Container(
      height: 55.0,
      child: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.blue,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person),
              color: Colors.blue,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.music_note),
              color: Colors.blue,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.contacts),
              color: Colors.blue,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Color(0xFFF6F9DA),
      appBar: AppBar(
        title: Text(
          'K-ON',
          style: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: makeBottom,
    );
  }
}
