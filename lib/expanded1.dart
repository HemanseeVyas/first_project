import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
    runApp(MaterialApp(
              debugShowCheckedModeBanner: false,
              home: first(),
      )
    );
}class first extends StatelessWidget {
  const first({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("App"),
          ),
      body: Column(children: [
        Expanded(
          child: Row(children: [
               Expanded(child: Container(color: Colors.cyan,alignment: Alignment.topLeft,child: Text("1"),),),
               Expanded(child: Container(color: Colors.purple,alignment: Alignment.topCenter,child: Text("1"),),),
               Expanded(child: Container(color: Colors.blue,alignment: Alignment.topRight,child: Text("1"),),),
               Expanded(child: Container(color: Colors.amber,margin: EdgeInsets.only(right: 20),alignment: Alignment.center,child: Text("1"),))
            ],),
        ),
        Expanded(
          child: Row(children: [
              Expanded(child: Container(color: Colors.green,margin: EdgeInsets.only(left: 10),alignment: Alignment.centerLeft,child: Text("1"),),),
              Expanded(child: Container(color: Colors.cyan,alignment: Alignment.center,child: Text("1"),),),
              Expanded(child: Container(color: Colors.deepPurple,alignment: Alignment.centerRight,child: Text("1"),),),
              Expanded(child: Container(color: Colors.purpleAccent,margin: EdgeInsets.only(right: 10),),)
            ],),
        ),
          Expanded(
            flex: 2,
            child: Row(children: [
              Expanded(child: Container(color: Colors.cyanAccent,margin: EdgeInsets.only(right: 10),alignment: Alignment.bottomLeft,child: Text("1"),),),
              Expanded(child: Container(color: Colors.blueAccent,margin: EdgeInsets.only(right: 10),alignment: Alignment.bottomCenter,child: Text("1"),))
            ],),
          ),
        Expanded(
          child: Row(children: [
            Expanded(flex: 3,child: Container(color: Colors.pink,),),
            Expanded(child: Container(color: Colors.orange,margin: EdgeInsets.only(right: 10),))
          ],),
        ),
        Expanded(
          child: Row(children: [
            Expanded(child: Container(color: Colors.cyan,margin: EdgeInsets.fromLTRB(10, 0, 10, 0)),),
            Expanded(child: Container(color: Colors.purple,margin: EdgeInsets.only(right: 10),),),
            Expanded(child: Container(color: Colors.blue,margin: EdgeInsets.only(right: 10),),),
            Expanded(child: Container(color: Colors.amber,margin: EdgeInsets.only(right: 5),))
          ],),
        ),
        Expanded(
          child: Row(children: [
            Expanded(child: Container(color: Colors.pink,margin: EdgeInsets.fromLTRB(10, 10, 10, 10),))
          ],),
        )
      ],
      ),
    );
  }
}
