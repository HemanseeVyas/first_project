import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:p1/Hive/classfile.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main()
async {
  WidgetsFlutterBinding.ensureInitialized();
  final Directory appDocumentsDir = await getApplicationDocumentsDirectory();

  Hive.init(appDocumentsDir.path);
  var box = await Hive.openBox('mybox');
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: hives(),
    ));
}
class hives extends StatefulWidget {
  const hives({super.key});

  @override
  State<hives> createState() => _hivesState();
}

class _hivesState extends State<hives> {
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  Box box=Hive.box('myBox');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hiwes"),),

      body: Column(children: [
        TextField(
          controller: t1,
        ),
        TextField(
          controller: t2,
        ),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: () {



         String name=t1.text;
         String contact=t2.text;


         controller  c=controller(name, contact);
         box.add(c);
         print(c);
        },child: Text("Add")),
        ElevatedButton(onPressed: () {

        },child: Text("view")),
      ],),
    );
  }
}
