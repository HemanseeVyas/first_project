import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:p1/my%20data.dart';
import 'package:p1/pageview.dart';

class Second extends StatefulWidget {
  int pos;

  Second(this.pos);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  List arr=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    switch(widget.pos)
    {
      case 0 :
        {
            arr= data_class.one;
            break;
        }
        case 1 :
        {
            arr= data_class.two;
            break;
        }
        case 2 :
        {
            arr= data_class.three;
             break;
        }
        case 3 :
        {
            arr= data_class.four;
            break;
        }
        case 4 :
        {
            arr= data_class.one;
            break;
        }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${data_class.arr[widget.pos]}")),
      body: ListView.builder(itemCount: arr.length,itemBuilder: (context, index) {
        return Card(child:  ListTile(onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return THird(index, arr);
           },));
        },title: Text("${arr[index]}"),),
        );
      },),
    );
  }
}
