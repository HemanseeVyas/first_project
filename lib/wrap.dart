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
        title: Text("Wrap"),
      ),
      body:Wrap(
        children: [
          Container(width: 100,height: 100,color: Colors.purpleAccent,margin: EdgeInsets.all(10),alignment: Alignment.center,),
          Container(width: 100,height: 100,color: Colors.purpleAccent,margin: EdgeInsets.all(10),alignment: Alignment.center,),
          Container(width: 100,height: 100,color: Colors.purpleAccent,margin: EdgeInsets.all(10),alignment: Alignment.center,),
          Container(width: 100,height: 100,color: Colors.purpleAccent,margin: EdgeInsets.all(10),alignment: Alignment.center,),
          Container(width: 100,height: 100,color: Colors.purpleAccent,margin: EdgeInsets.all(10),alignment: Alignment.center,),
          Container(width: 100,height: 100,color: Colors.purpleAccent,margin: EdgeInsets.all(10),alignment: Alignment.center,),
          Container(width: 100,height: 100,color: Colors.purpleAccent,margin: EdgeInsets.all(10),alignment: Alignment.center,),
          Container(width: 100,height: 100,color: Colors.purpleAccent,margin: EdgeInsets.all(10),alignment: Alignment.center,),
          Container(width: 100,height: 100,color: Colors.purpleAccent,margin: EdgeInsets.all(10),alignment: Alignment.center,),
          Container(width: 100,height: 100,color: Colors.purpleAccent,margin: EdgeInsets.all(10),alignment: Alignment.center,),
          Container(width: 100,height: 100,color: Colors.purpleAccent,margin: EdgeInsets.all(10),alignment: Alignment.center,),
          Container(width: 100,height: 100,color: Colors.purpleAccent,margin: EdgeInsets.all(10),alignment: Alignment.center,),
        ],
      ) ,
    );
  }
}
