import 'package:flutter/material.dart';
import 'package:nvc_grade/register.dart';
import 'package:nvc_grade/student.dart';
void main() {
  runApp(FirstPage());
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network(
                    'https://upload.wikimedia.org/wikipedia/th/f/fe/%E0%B8%AA%E0%B8%AD%E0%B8%814.png',
                    width: 150),
                Text(
                  'ระบบตรวจสอบผลการเรียน',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'สถาบันการอาชีวะศึกษานครปฐม',
                  style: TextStyle(fontSize: 16),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                TextField(
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    icon: Icon(Icons.person),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                TextField(
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    icon: Icon(Icons.vpn_key),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Builder(
                        builder: (context) => RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => StudentPage())
                            );
                          },
                          child: Text('Login'),
                          color: Colors.black26,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      Builder(
                        builder: (context) => RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterPage())
                            );
                          },
                          child: Text('Register'),
                          color: Colors.black26,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




