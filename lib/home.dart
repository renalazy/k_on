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
        color: Color(0xFFF6F9DA),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Color(0xFFDB1110),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person),
              color: Color(0xFFDB1110),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.music_note),
              color: Color(0xFFDB1110),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.contacts),
              color: Color(0xFFDB1110),
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
          style: TextStyle(color: Color(0xFFDB1110)),
        ),
        backgroundColor: Color(0xFFF6F9DA),
      ),
      bottomNavigationBar: makeBottom,
    );
  }
}
