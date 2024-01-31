import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:p1/my%20data.dart';
import 'package:p1/second.dart';

void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: first(),));
}
class first extends StatefulWidget {

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(data_class.arr);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("Listview_Builder"),),

      body: ListView.builder(itemCount: data_class.arr.length,itemBuilder: (context, index) {
        return Card(child: ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Second(index);
            },));
          },
          trailing: Wrap(children: [
            IconButton(onPressed: () {
              // print("delete");
              data_class.arr.remove("${data_class.arr[index]}");
              setState(() {

              });
            }, icon:  Icon(Icons.delete),),

            IconButton(onPressed: () {
              // print("edit");
              // arr.replaceRange(0, arr.length, arr.indexed);
            }, icon:  Icon(Icons.edit),)
          ]),
          // leading: Image.asset("${img[index]}"),
          // round image
          leading: CircleAvatar(backgroundImage: AssetImage("${data_class.img[index]}"),),
          title: Text("${data_class.arr[index]}"),
          subtitle: Text("${data_class.img.length}"),
        ),);
      },),
    );
  }
}

