import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
    runApp(
        MaterialApp(
                debugShowCheckedModeBanner: false,
                home: flutter(),
        )
    );
}
class flutter extends StatelessWidget {
  const flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text("App"),
      ),
      body: Container(
          height: 100,
          width: 100,
            color: Colors.purpleAccent,
            child: Text("Hello"),
      ),
    );
  }
}
