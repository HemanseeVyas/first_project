import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
      runApp(MaterialApp(
              debugShowCheckedModeBanner: false,
                home: first(),
      ),);
}
class first extends StatelessWidget {
  const first({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
          title: Text("Hello"),),
      body: Column(children: [
        Expanded(
          child: Row(children: [
            Expanded(child: Container(color: Colors.deepPurple),),
            Expanded(child: Container(color: Colors.purpleAccent),),
            Expanded(child: Container(color: Colors.deepPurple),),
            Expanded(child: Container(color: Colors.green),)
          ],),
        ),
        Expanded(
          child: Row(children: [
            Expanded(child: Container(color: Colors.amber),),
            Expanded(child: Container(color: Colors.cyan),),
            Expanded(child: Container(color: Colors.limeAccent),)
          ],),
        )
      ],),
    );
  }
}
