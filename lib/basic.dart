import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
      MaterialApp(
            debugShowCheckedModeBanner: false,
            home: demo(),
      )
  );
}
class demo extends StatelessWidget {
  const demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.amber,
          centerTitle: true,
           title: Text("App"),
        ),
    );
  }
}
