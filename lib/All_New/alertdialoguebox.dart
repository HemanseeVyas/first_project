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
      appBar: AppBar(
        title: Text("Alert_Dialogue"),
      ),
      body: ElevatedButton(onPressed: () {
        showDialog(barrierColor: Colors.transparent,
            barrierDismissible: false,context: context, builder: (context) {
          return AlertDialog(
            title: Text("hemu"),
            actions: [
              Row(children: [
                TextButton(onPressed: () {
                  Navigator.pop(context);
                }, child: Text("ok")),
                TextButton(onPressed: () {
                  Navigator.pop(context);
                }, child: Text("cancel"))
              ],)
            ],
          );
        },);
      }, child: Text("Click Here"),),
    );
  }
}
