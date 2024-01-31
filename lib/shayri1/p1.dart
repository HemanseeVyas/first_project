import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:p1/shayri1/p01.dart';
import 'package:p1/shayri1/p02.dart';

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
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Love Shayri"),actions: [
      Icon(Icons.share),
      Icon(Icons.more_vert),
    ],),

      body: ListView.builder(itemCount: hello.h.length,itemBuilder: (context, index) {
          return Card(
            child: ListTile(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return seconds(index);
              },));
            },
              trailing: Icon(Icons.emoji_emotions_outlined),
              leading: Container(height: 50,width: 50,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("${hello.img[index]}"))),
              ),
              title: Text("${hello.h[index]}"),
            ),
          );
      },),

    );
  }
}
