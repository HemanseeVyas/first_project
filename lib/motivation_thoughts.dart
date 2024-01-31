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
    List arr = ["Education Thoughts","Thoughts On Self","Success Quotes","Money Thoughts","Positive Quotes"];
    List img = ["myassets/image/a.jpg","myassets/image/b.jpg","myassets/image/c.jpg","myassets/image/d.jpg","myassets/image/e.jpg",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(centerTitle: true,title: Text("....Motivation_Thoughts...."),),
      body: ListView.builder(itemCount: arr.length,itemBuilder: (context, index) {
            return Card(child:
              ListTile(
                // leading: Image.asset("${img[index]}"),
                leading: CircleAvatar(backgroundImage: AssetImage("${img[index]}"),),
                   title: Text("${arr[index]}"),
              ),
              );
      },),
    );

  }
}
