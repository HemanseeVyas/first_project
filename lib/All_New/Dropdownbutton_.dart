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
  int h=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
        Text("Drop_Down"),),

      body: DropdownButton(value: h,items: [
        DropdownMenuItem(child:
        Text("Flutter"),value: 1,),

        DropdownMenuItem(child:
        Text("Dart"),value: 2,),

        DropdownMenuItem(child:
        Text("Java"),value: 3,),

        DropdownMenuItem(child:
        Text("Php"),value: 4,),

        DropdownMenuItem(child:
        Text("C++"),value: 5,),

        DropdownMenuItem(child:
        Text("c"),value: 6,),
      ], onChanged: (value) {
        h=value!;
        setState(() {
        });
      },
      ),
    );
  }
}
