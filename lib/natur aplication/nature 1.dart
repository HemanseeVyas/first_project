import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:p1/my%20data.dart';
// import 'package:p1/natue%20aplication/nature%202.dart';
import 'package:p1/natur%20aplication/nature%202.dart';

import 'nature o1.dart';

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
  void initState() {
    // TODO: implement initState
    super.initState();
    // var data_class;
    // print(data.arr);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Aplication"),),

      body: ListView.builder(
        itemCount: data.arr.length, itemBuilder: (context, index) {
        return Card(child:
        ListTile(onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return third(index);
          },));
        },
          leading: CircleAvatar(
              backgroundImage: AssetImage("${data.img[index]}")),
          title: Text("${data.arr[index]}"),
          subtitle: Text("${data.n[index]}"),
        )
        );
      },),
    );
  }
}