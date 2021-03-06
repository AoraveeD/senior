import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'termservice.dart';
import 'Content.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  bool checkBoxValue = false;
  bool _enabled = false;
  bool nextvalue = false;

  @override
  Widget build(BuildContext context) {
    var _onPressed;
    if (_enabled) {
      _onPressed = () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      };
    }
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue.shade200, Colors.blueGrey],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 450,
                    height: 450,
                    child: Image.asset('assets/images/iceberg.png')),
              ),
            ),
            RaisedButton(
              //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              onPressed: _onPressed,
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
              color: Colors.red,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),

              // padding: const EdgeInsets.all(20),
              child:
                  const Text('Let Me Help You', style: TextStyle(fontSize: 20)),
            ),
            FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => TermService()));
                },
                child: Row(
                  children: [
                    new Checkbox(
                      value: _enabled,
                      onChanged: (nextvalue) {
                        setState(() {
                          _enabled = nextvalue!;
                        });
                      },
                      activeColor: Colors.green,
                    ),
                    Text('Terms and Conditions'),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                )),
          ],
        ),
      ),
    );
  }
}
