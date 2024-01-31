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
  String gender="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Form"),
    ),
      body: Row(children: [
        Radio(value: "MAle", groupValue: gender, onChanged: (value) {
              gender=value!;
              setState(() {

              });
        },),
        Text("Male"),
        Radio(value: "FEMAle", groupValue: gender, onChanged: (value) {
              gender=value!;
              setState(() {

              });
        },),
        Text("Female"),
      ]),
    );
  }
}
