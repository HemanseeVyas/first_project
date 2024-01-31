import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
      runApp(MaterialApp(debugShowCheckedModeBanner: false,home: first(),));
}
class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Font"),
      ),
      body: Container(
        height: 100,
        width: 100,
        child: Text("Hemansee",style: TextStyle(fontSize: 30,fontFamily: "three"),),
      ),
    );
  }
}
