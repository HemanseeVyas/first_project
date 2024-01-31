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
  List arr = ["Hemansee","Aayushi","Bhakti","Dharmita","Devanshi","Sneha","Tisha"];
  List contact = ["9429615441","9429615441","9429615441","9429615441","9429615441","9429615441","9429615441"];
  List img = ["myassets/image/one.jpg","myassets/image/two.jpg","myassets/image/three.jpg",
    "myassets/image/four.jpg","myassets/image/five.jpg","myassets/image/two.jpg","myassets/image/three.jpg",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text("Listview_Seprator"),
      ),
      body: ListView.separated(itemCount: arr.length,itemBuilder: (context, index) {
        return ListTile(textColor: Colors.blue,
          tileColor: Colors.lightGreenAccent,
          trailing: Wrap(children: [
            IconButton(onPressed: () {
              print("delete");
              arr.remove("${arr[index]}");
              setState(() {

              });
            }, icon:  Icon(Icons.delete),),

            IconButton(onPressed: () {
              print("edit");
            }, icon:  Icon(Icons.edit),)
          ]),
          // leading: Image.asset("${img[index]}"),
          // round image
          leading: CircleAvatar(backgroundImage: AssetImage("${img[index]}"),),
          title: Text("${arr[index]}"),
          subtitle: Text("${contact[index]}"),
        );
      }, separatorBuilder: (BuildContext context, int index) {
        // return SizedBox(height: 5,width: 5,);
            return Divider(thickness: 3,color: Colors.deepPurpleAccent,);
      },),
    );
  }
}
