import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class firstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 900,
          height: 900,
          color: Colors.green[900],
          child: Center(
            child: Text(
              'E-Spot',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_)=> HomeScreen()));
        },
        backgroundColor: Colors.white,
        foregroundColor: Colors.green[900],
        label: Text('Next'),
        icon: Icon(Icons.keyboard_arrow_right),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
