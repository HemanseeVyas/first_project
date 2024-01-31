import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  static SharedPreferences ? prefs;
  int a=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get();
  }
  get()
  async {
    prefs=await SharedPreferences.getInstance();
    a=prefs!.getInt("number") ?? 0;
    setState(() {

    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Demo"),),

      body: Column(children: [
        Text("A : $a",style: TextStyle(fontSize: 20),),
        ElevatedButton(onPressed: () {
          prefs!.remove("number");
          // Navigator.push(context, MaterialPageRoute(builder: (context) {
          //   // return home();
          // },));
        }, child: Text("Clear")),
      ]),
    );
  }
}
