import 'package:flutter/material.dart';

void main()
{
    runApp(MaterialApp(
            debugShowCheckedModeBanner: false,
            home: first(),
      )
    );
}
class first extends StatelessWidget {
  const first({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("App"),
      ),
      body: Column(children: [
            Row(children: [
              Container(width: 100,height: 100,color: Colors.deepPurple),
              Container(width: 100,height: 100,color: Colors.purpleAccent),
              Container(width: 100,height: 100,color: Colors.deepPurple),
            ],),
        Row(children: [
          Container(width: 100,height: 100,color: Colors.amber),
          Container(width: 100,height: 100,color: Colors.cyan),
          Container(width: 100,height: 100,color: Colors.limeAccent),
        ],)
          ],),
    );
  }
}
