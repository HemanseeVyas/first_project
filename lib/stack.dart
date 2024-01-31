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
        title: Text("Stack"),
      ),
      body: Stack(
        children: [
          // Container(width: 100,height: 100,color: Colors.purpleAccent,),
          // Container(width: 80,height: 80,color: Colors.blueGrey,),
          // Container(width: 40,height: 40,color: Colors.purpleAccent,),
          Container(width: 200,height: 200,color: Colors.purpleAccent,margin: EdgeInsets.all(80),),
          Container(width: 150,height: 150,color: Colors.blueGrey,margin: EdgeInsets.all(105),),
          Container(width: 100,height: 100,color: Colors.purpleAccent,margin: EdgeInsets.all(130),),
          Container(width: 50,height: 50,color: Colors.blueGrey,margin: EdgeInsets.all(155),),
        ],
      ),
    );
  }
}
