import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: calc(),));
}
class calc extends StatefulWidget {
  const calc({super.key});

  @override
  State<calc> createState() => _calcState();
}
//prectice
class _calcState extends State<calc> {
  String ans="";
  String a1="";
  String a2="";
  int t=0;
  get(String a)
  {
            if (a == "c") {
              ans = "";
            } else if (a == "CE") {
              ans = ans.substring(0, ans.length - 1);
            } else if (a == "+") {
              a1 = ans;
              t = 1;
              ans = "";
            } else if (a == "-") {
              a1 = ans;
              t = 2;
              ans = "";
            } else if (a == "*") {
              a1 = ans;
              t = 3;
              ans = "";
            } else if (a == "/") {
              a1 = ans;
              t = 4;
              ans = "";
            }else if(a=="=") {
              int x, y;
              x = int.parse(a1);
              y = int.parse(ans);
              int c = 0;
              if (t == 1) {
                c = x + y;
              } else if (t == 2) {
                c = x - y;
              } else if (t == 3) {
                c = x * y;
              } else if (t == 4) {
                c = (x / y).toInt();
              }
              ans =c.toString();
            }
           else
             {
               ans = ans + "$a";
             }
            setState(() {

            });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculater"),centerTitle: true),

      body: Column(children: [
        Container(
          height: 50,
          margin: EdgeInsets.all(10),
          width: double.infinity,
          color: Colors.blue,
          child: Text("$ans",style: TextStyle(fontSize: 20),),
        ),
        SizedBox(
          height: 10,
          width: 10,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          InkWell(onTap: () => get("1"),child: Container(height: 60,width: 60,color: Colors.cyanAccent,child: Text("1"),alignment: Alignment.center,)),
          InkWell(onTap: () => get("2"),child: Container(height: 60,width: 60,color: Colors.cyanAccent,child: Text("2"),alignment: Alignment.center,)),
          InkWell(onTap: () => get("3"),child: Container(height: 60,width: 60,color: Colors.cyanAccent,child: Text("3"),alignment: Alignment.center,)),
          InkWell(onTap: () => get("+"),child: Container(height: 60,width: 60,color: Colors.cyanAccent,child: Text("+"),alignment: Alignment.center,)),
        ],),
        SizedBox(
          height: 10,
          width: 10,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(onTap: () => get("4"),child: Container(height: 60,width: 60,color: Colors.cyanAccent,child: Text("4"),alignment: Alignment.center,)),
            InkWell(onTap: () => get("5"),child: Container(height: 60,width: 60,color: Colors.cyanAccent,child: Text("5"),alignment: Alignment.center,)),
            InkWell(onTap: () => get("6"),child: Container(height: 60,width: 60,color: Colors.cyanAccent,child: Text("6"),alignment: Alignment.center,)),
            InkWell(onTap: () => get("-"),child: Container(height: 60,width: 60,color: Colors.cyanAccent,child: Text("-"),alignment: Alignment.center,)),
          ],),
        SizedBox(
          height: 10,
          width: 10,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(onTap: () => get("7"),child: Container(height: 60,width: 60,color: Colors.cyanAccent,child: Text("7"),alignment: Alignment.center,)),
            InkWell(onTap: () => get("8"),child: Container(height: 60,width: 60,color: Colors.cyanAccent,child: Text("8"),alignment: Alignment.center,)),
            InkWell(onTap: () => get("9"),child: Container(height: 60,width: 60,color: Colors.cyanAccent,child: Text("9"),alignment: Alignment.center,)),
            InkWell(onTap: () => get("*"),child: Container(height: 60,width: 60,color: Colors.cyanAccent,child: Text("*"),alignment: Alignment.center,)),
          ],),
        SizedBox(
          height: 10,
          width: 10,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(onTap: () => get("0"),child: Container(height: 60,width: 60,color: Colors.cyanAccent,child: Text("0"),alignment: Alignment.center,)),
            InkWell(onTap: () => get("="),child: Container(height: 60,width: 60,color: Colors.cyanAccent,child: Text("="),alignment: Alignment.center,)),
            InkWell(onTap: () => get("c"),child: Container(height: 60,width: 60,color: Colors.cyanAccent,child: Text("c"),alignment: Alignment.center,)),
            InkWell(onTap: () => get("/"),child: Container(height: 60,width: 60,color: Colors.cyanAccent,child: Text("/"),alignment: Alignment.center,)),
          ],),
        SizedBox(
          height: 10,
          width: 10,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(onTap: () => get("CE"),child: Container(height: 60,width: 60,color: Colors.cyanAccent,child: Text("CE"),alignment: Alignment.center,)),
            InkWell(onTap: () => get("."),child: Container(height: 60,width: 60,color: Colors.cyanAccent,child: Text("."),alignment: Alignment.center,)),
            // Container(height: 60,width: 60,color: Colors.cyanAccent,child: Text("3"),alignment: Alignment.center,),
            // Container(height: 60,width: 60,color: Colors.cyanAccent,child: Text("+"),alignment: Alignment.center,),
          ],),
      ]),
    );
  }
}
