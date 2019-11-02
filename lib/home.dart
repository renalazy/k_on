import 'package:flutter/material.dart';
import 'package:k_on/about.dart';

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
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutPage(),
                    ));
              },
            ),
          ],
        ),
      ),
    );

    var bodyContent = SafeArea(
      child: Center(
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage('images/k-on-logo.png'),
              width: 350.0,
              height: 145.0,
            ),
            Container(
              width: 350.0,
              child: Card(
                color: Colors.white,
                child: ListTile(
                  leading: Image.asset(
                    'images/yui.png',
                    width: 50.0,
                  ),
                  title: Text(
                    'Hirasawa Yui',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xFF00CC71),
                    ),
                  ),
                  subtitle: Text('Guitarist & Vocal'),
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
                    'images/mio.png',
                    width: 50.0,
                  ),
                  title: Text(
                    'Akiyama Mio',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xFF00CC71),
                    ),
                  ),
                  subtitle: Text('Bassist & Vocal'),
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
                    'images/ritsu.png',
                    width: 50.0,
                  ),
                  title: Text(
                    'Tainaka Ritsu',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xFF00CC71),
                    ),
                  ),
                  subtitle: Text('Drummer'),
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
                    'images/mugi.png',
                    width: 50.0,
                  ),
                  title: Text(
                    'Kotobuki Tsumugi',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xFF00CC71),
                    ),
                  ),
                  subtitle: Text('Piano'),
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
                    'images/azusa.png',
                    width: 50.0,
                  ),
                  title: Text(
                    'Nakano Azusa',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xFF00CC71),
                    ),
                  ),
                  subtitle: Text('Guitarist'),
                  onTap: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Color(0xFFF6F9DA),
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(color: Color(0xFFDB1110)),
        ),
        backgroundColor: Color(0xFFF6F9DA),
      ),
      bottomNavigationBar: makeBottom,
      body: bodyContent,
    );
  }
}
