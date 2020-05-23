import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  _read() async {
    final svlevel = await SharedPreferences.getInstance();
    final key = 'my_int_key';
    final svlevelvalue = svlevel.getInt(key) ?? 0;
    print('read: $svlevelvalue');
    Navigator.pushNamed(context, '/home');
  }


  @override
  void initState() {
    super.initState();
    _read();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SpinKitThreeBounce(
            color: Colors.white,
            size: 90.0,
          ),
          Image.asset('assets/square-logo.png'),
        ],
      ),
    );
  }
}
