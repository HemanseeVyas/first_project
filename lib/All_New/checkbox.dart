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
  bool h1=false;
  bool h2=false;
  bool h3=false;
  bool h4=false;
  int sum=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form"),
      ),
      body: Column(children: [
        Row(children: [
          Checkbox(value: h1, onChanged: (value) {
            h1=value!;
            if(h1==true)
              {
                sum=sum+100;
              }else
              {
                  sum=sum-100;
              }
            setState(() {

            });
          },),
          Text("100"),
        ],),
        Row(children: [
          Checkbox(value: h2, onChanged: (value) {
            h2=value!;
            if(h2==true)
            {
              sum=sum+200;
            }else
            {
              sum=sum-200;
            }
            setState(() {

            });
          },),

          Text("200"),
        ],),
        Row(children: [
          Checkbox(value: h3, onChanged: (value) {
            h3=value!;
            if(h3==true)
            {
              sum=sum+300;
            }else
            {
              sum=sum-300;
            }
            setState(() {

            });
          },),

          Text("300"),
        ],),
        Row(children: [
          Checkbox(value: h4, onChanged: (value) {
            h4=value!;
            if(h4==true)
            {
              sum=sum+400;
            }else
            {
              sum=sum-400;
            }
            setState(() {

            });
          },),

          Text("400"),
        ],),
        Text("${sum}"),
      ]),
    );
  }
}
