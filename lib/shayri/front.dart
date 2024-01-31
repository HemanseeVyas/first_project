import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:p1/shayri/backend.dart';
import 'package:p1/shayri/front1.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: first(),));
}

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  List <bool> temp = List.filled(datas.arr.length, false);
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    // print(datas.arr);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Love Shayri"),actions: [
        Icon(Icons.share),
        Icon(Icons.more_vert),
      ],),

      body: ListView.builder(itemCount: datas.arr.length,
        itemBuilder: (context, index) {
          return Card(child:
       GestureDetector(
         onTapUp: (details) {
           temp[index]=false;
           // Navigator.push(context, MaterialPageRoute(builder: (context) {
           //   return second(index);
           // },
           // ));
           setState(() {

           });
         },
         onTapCancel: () {
           temp[index]=false;
           setState(() {

           });
         },
         onTapDown: (details) {
           temp[index]=true;
           setState(() {

           });
         },
         child:    ListTile(tileColor: (temp[index])?Colors.pink:null,
         onTap: () {
           Navigator.push(context, MaterialPageRoute(builder: (context) {
             return second(index);
           },));
         },
         // trailing: (temp[index])?Icon(Icons.emoji_emotions_outlined):null,
           trailing: Icon(Icons.emoji_emotions_outlined),
         // leading: Image.asset("${img[index]}"),
         leading: Container(height: 50,
           width: 50,
           decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill,
               image: AssetImage("${datas.img[index]}"))),),
         title: Text("${datas.arr[index]}",
           style: TextStyle(fontSize: 20, color: Colors.teal),),
       ),)
          );
        },),
    );
  }
}
