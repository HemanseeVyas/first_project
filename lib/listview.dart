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
      appBar: AppBar(centerTitle:true,title: Text("List View"),),
       body:
      ListView(
          children: [
        Container(width: double.infinity,height: 60,color: Colors.lightGreenAccent,),
        Container(width: double.infinity,height: 60,color: Colors.blueGrey,),
        Container(width: double.infinity,height: 60,color: Colors.lightGreen,),
        Container(width: double.infinity,height: 60,color: Colors.purpleAccent,),
            Container(width: double.infinity,height: 60,color: Colors.lightGreenAccent,),
            Container(width: double.infinity,height: 60,color: Colors.blueGrey,),
            Container(width: double.infinity,height: 60,color: Colors.lightGreen,),
            Container(width: double.infinity,height: 60,color: Colors.purpleAccent,),
            Container(width: double.infinity,height: 60,color: Colors.lightGreenAccent,),
            Container(width: double.infinity,height: 60,color: Colors.blueGrey,),
            Container(width: double.infinity,height: 60,color: Colors.lightGreen,),
            Container(width: double.infinity,height: 60,color: Colors.purpleAccent,),

      // ListView(scrollDirection: Axis.horizontal,
      //     children: [
      //       Container(width: 100,height: 60,color: Colors.lightGreenAccent,),
      //       Container(width: 100,height: 60,color: Colors.blueGrey,),
      //       Container(width: 100,height: 60,color: Colors.lightGreen,),
      //       Container(width: 100,height: 60,color: Colors.purpleAccent,),
      //       Container(width: 100,height: 60,color: Colors.lightGreenAccent,),
          ]),
    );
  }
}
