import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: first(),
  ));
}

class first extends StatelessWidget {
  const first({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hello First"),
      ),
      body: Container(
        width: 200,
        height: 200,
        // color: Colors.purpleAccent,
        child: Text("Hello"),
        margin: EdgeInsets.fromLTRB(40, 20, 0, 0),
        padding: EdgeInsets.all(80),
        decoration: BoxDecoration(
          // color: Colors.amber,
          gradient: LinearGradient(begin: Alignment.topLeft,
          end: Alignment.bottomRight,
            colors: [Colors.amber,Colors.purpleAccent,Colors.purple,Colors.blue]
          ),
            border: Border.all(width: 3,color: Colors.black),
            // borderRadius: BorderRadius.all(Radius.circular(20)),
            // borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topRight: Radius.circular(20)),
        ),
      ),
    );
  }
}
