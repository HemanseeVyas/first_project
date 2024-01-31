import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main()
{
      runApp(MaterialApp(
            debugShowCheckedModeBanner: false,
            home: first(),
      ));
}
class  first extends StatefulWidget {
  const first ({super.key});

  @override
  State<first> createState() => _State();
}

class _State extends State<first> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
      centerTitle: true,
      title: Text("Calculater"),
    ),
    body: Column(children: [
        Container(
          margin: EdgeInsets.all(10),
        child: TextField(
          decoration: InputDecoration(border: OutlineInputBorder(),
            hintText: "Enter value",
            labelText: "Enter value",
            prefixIcon: Icon(Icons.calculate_sharp)
          ),
        ),
),
        SizedBox(
          height: 20,
          width: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: () {


            }, child: Text("1")),
            ElevatedButton(onPressed: () {

            }, child: Text("2")),
            ElevatedButton(onPressed: () {

            }, child: Text("3")),
            ElevatedButton(onPressed: () {

            }, child: Text("+"))
          ],
        ),
      SizedBox(
        height: 20,
        width: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(onPressed: () {

          }, child: Text("4")),
          ElevatedButton(onPressed: () {

          }, child: Text("5")),
          ElevatedButton(onPressed: () {

          }, child: Text("6")),
          ElevatedButton(onPressed: () {

          }, child: Text("-"))
        ],
      ),
      SizedBox(
        height: 20,
        width: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(onPressed: () {
            
          }, child: Text("7")),
          ElevatedButton(onPressed: () {

          }, child: Text("8")),
          ElevatedButton(onPressed: () {

          }, child: Text("9")),
          ElevatedButton(onPressed: () {

          }, child: Text("*"))
        ],
      ),
      SizedBox(
        height: 20,
        width: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(onPressed: () {

          }, child: Text("0")),
          ElevatedButton(onPressed: () {

          }, child: Text("=")),
          ElevatedButton(onPressed: () {

          }, child: Text("CE")),
          ElevatedButton(onPressed: () {

          }, child: Text("/"))
        ],
      )
    ],
    ),
  );
  }
}

