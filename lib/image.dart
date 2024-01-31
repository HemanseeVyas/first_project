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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle:true,
        title: Text("Image"),
      ),
      // body: Image.asset("myassets/image/two.jpg"),   only image

                //  container image set
    //   body: Container(
    //     width: 200,
    //     height: 200,
    //     decoration: BoxDecoration(
    //       color: Colors.deepPurpleAccent,
    //       image: DecorationImage(image: AssetImage("myassets/image/two.jpg")),
    //     ),
    //   ),

           //  fit container image
    body: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          image: DecorationImage(fit: BoxFit.fill,image: AssetImage("myassets/image/two.jpg")),
        ),
      ),
    );
  }
}
