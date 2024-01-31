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
  int a=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get();
  }
 Future get()
  async {
     await Future.delayed(Duration(seconds: 5));
     a=10;
     return a;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("Single data"),),
      body: FutureBuilder(
        initialData: 0,
        future: get(),
        builder: (context, snapshot) {
            if(snapshot.connectionState==ConnectionState.done)
             {
                return Center(
                  child: Text("A : $a",style: TextStyle(fontSize: 30),),
                );
             }else
             {
                return Center(
                  child: CircularProgressIndicator(),
                );
             }
      },),
    );
  }
}
