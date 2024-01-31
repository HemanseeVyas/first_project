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
        title: Text("Flexible"),),
      body: Column(children: [
        Flexible(child:   Container(width: 100,height: 100,color: Colors.lightGreenAccent,)),
        Expanded(child: Container(width: double.infinity,height: 100,color: Colors.deepPurple,)),
        Expanded(child: Container(width: double.infinity,height: 100,color: Colors.purple,)),
        Expanded(child: Container(width: double.infinity,height: 100,color: Colors.deepPurple,)),
            ],
      ),
    );
  }
}
