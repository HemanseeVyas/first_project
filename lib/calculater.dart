import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
      runApp(MaterialApp(
          debugShowCheckedModeBanner: false,
          home: first(),
      ));
}
class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _State();
}

class _State extends State<first> {
  TextEditingController t1= TextEditingController();
  TextEditingController t2= TextEditingController();
String ans="";
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
          controller: t1,
        decoration: InputDecoration(border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.calculate_rounded),
        hintText: "Enter value",
        labelText: "Enter value",
        ),
        ),
        ),
        Container(
        margin: EdgeInsets.all(10),
        child: TextField(
          controller: t2,
        decoration: InputDecoration(border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.calculate_rounded),
        hintText: "Enter value",
        labelText: "Enter value",
        ),
        ),
        ),
        Text(
        "Ans = $ans",
        style: TextStyle(fontSize: 30),
        ),
        SizedBox(height: 20),
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        ElevatedButton(onPressed: () {
        String s1 = t1.text;
        String s2 = t2.text;
        int c = int.parse(s1)+int.parse(s2);
        ans = c.toString();
          setState(() {

          });
        }, child: Text("Sum")),
          ElevatedButton(onPressed: () {
            String s1 = t1.text;
            String s2 = t2.text;
            int c = int.parse(s1)-int.parse(s2);
            ans = c.toString();
            setState(() {

            });
          }, child: Text("Sub")),
          ElevatedButton(onPressed: () {
            String s1 = t1.text;
            String s2 = t2.text;
            int c = int.parse(s1)*int.parse(s2);
            ans = c.toString();
            setState(() {

            });
          }, child: Text("Mul")),
          ElevatedButton(onPressed: () {
            String s1 = t1.text;
            String s2 = t2.text;
            int c = (int.parse(s1)/int.parse(s2)).toInt();
            ans = c.toString();
            setState(() {

            });
          }, child: Text("Div"))
        ],
        )
        ],),
        );
  }
}

