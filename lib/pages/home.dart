import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './aboutPage.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  _save() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'my_int_key';
    final value = 42;
    prefs.setInt(key, value);
    print('saved $value');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('maze game'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Ryan'),
              accountEmail: Text('r2d2murphy@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/steve.jpg'),
              ),
            ),
            ListTile(
              title: Text('Menu'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                   builder: (BuildContext context) => AboutPage()),
                );
              },
            ),
            ListTile(
              title: Text('save'),
              onTap: () {
                _save();
              },
            ),
          ],
        ),
      ),
      body: null,
    );
  }
}
