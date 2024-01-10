import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(0, 150, 136, 1),
      ),
      body: Center(
        child: Text('Hello Flutter',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.grey[600],
              fontFamily: 'indieFlower',
            )),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Click'),
        backgroundColor: Colors.amber,
        onPressed: () {
          print("Don't push this button ");
        },
      ),
    );
  }
}
