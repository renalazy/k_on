import 'package:flutter/material.dart';
import 'package:k_on/home.dart';

void main() => runApp(About());

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About',
      home: AboutPage(),
    );
  }
}

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    var topContent = AppBar(
      title: Text(
        'About Us',
        style: TextStyle(color: Color(0xFFDB1110)),
      ),
      backgroundColor: Color(0xFFF6F9DA),
    );

    final bottomContent = Container(
      height: 55.0,
      child: BottomAppBar(
        color: Color(0xFFF6F9DA),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Color(0xFFDB1110),
              onPressed: () {
                Navigator.pop(context);
              },
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

    var bodyContent = SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('images/done-02.png'),
              width: 150.0,
              height: 150.0,
            ),
            Text(
              'Wibu Lazy',
              style: TextStyle(fontSize: 30.0, color: Color(0xFFDB1110)),
            ),
            SizedBox(height: 15.0),
            Container(
              width: 350.0,
              child: Card(
                color: Colors.white,
                child: ListTile(
                  leading: Image.asset(
                    'images/facebook.png',
                    width: 30.0,
                  ),
                  title: Text(
                    '@whylazy.group',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xFF7984EB),
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ),
            Container(
              width: 350.0,
              child: Card(
                color: Colors.white,
                child: ListTile(
                  leading: Image.asset(
                    'images/instagram.png',
                    width: 30.0,
                  ),
                  title: Text(
                    '@whylazy.group',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xFFFF5B5B),
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ),
            Container(
              width: 350.0,
              child: Card(
                color: Colors.white,
                child: ListTile(
                  leading: Image.asset(
                    'images/whatsapp.png',
                    width: 30.0,
                  ),
                  title: Text(
                    '+62 1234 5678',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xFF00CC71),
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ),
            Image(
              image: AssetImage('images/k-on-logo.png'),
              color: Color.fromRGBO(255, 255, 255, 0.3),
              colorBlendMode: BlendMode.modulate,
            )
          ],
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Color(0xFFF6F9DA),
      appBar: topContent,
      body: bodyContent,
      bottomNavigationBar: bottomContent,
    );
  }
}
