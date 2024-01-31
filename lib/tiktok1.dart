import 'dart:math';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
    runApp(MaterialApp(debugShowCheckedModeBanner: false,home: game(),));
}
class game extends StatefulWidget {
  const game({super.key});

  @override
  State<game> createState() => _gameState();
}

class _gameState extends State<game> {
  List l=[];
  int t=0;
  int r=0;
  String a="";
  String msg="";
  bool is_win=false;
  int cnt=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    l=List.filled(9, "");
  }
  get(int a)
  {
     if(t==8)
       {
           if(l[a]=="")
           {
               l[a]="x";
            }
       }
     if(l[a]=="")
       {
            if(t%2==0)
              {
                  l[a]="x";
                  t++;
                  cnt++;
                  win();
              }
       }
     while(l[r]!="")
       {
          r=Random().nextInt(9);
       }
     if(l[r]=="")
       {
         l[r]="0";
         t++;
         win();
       }
     setState(() {

     });
     win();
     setState(() {

     });
  }
  win()
  {
    if((l[0]=="x" && l[1]=="x" && l[2]=="x") || (l[3]=="x" && l[4]=="x" && l[5]=="x") || (l[6]=="x" && l[7]=="x" && l[8]=="x")
        || (l[0]=="x" && l[3]=="x" && l[6]=="x") || (l[1]=="x" && l[4]=="x" && l[7]=="x") || (l[2]=="x" && l[5]=="x" && l[8]=="x")
        || (l[0]=="x" && l[4]=="x" && l[8]=="x") || (l[2]=="x" && l[4]=="x" && l[6]=="x"))
    {
      msg="x is win";
      is_win=true;
    }else if((l[0]=="0" && l[1]=="0" && l[2]=="0") || (l[3]=="0" && l[4]=="0" && l[5]=="0") || (l[6]=="0" && l[7]=="0" && l[8]=="0")
        || (l[0]=="0" && l[3]=="0" && l[6]=="0") || (l[1]=="0" && l[4]=="0" && l[7]=="0") || (l[2]=="0" && l[5]=="0" && l[8]=="0")
        || (l[0]=="0" && l[4]=="0" && l[8]=="0") || (l[2]=="0" && l[4]=="0" && l[6]=="0")) {
      msg = "0 is win";
      is_win = true;
    }
    // else if(t==9)
    // {
    //   msg = "match draw....";
    //   // is_win==false;
    // }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("game"),),

      body: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          InkWell(onTap: () => (is_win==false)?get(0):null,child: Container(alignment: Alignment.center,height: 50,width: 50,color: Colors.teal,margin: EdgeInsets.all(10),child: Text("${l[0]}"),)),
          InkWell(onTap: () => (is_win==false)?get(1):null,child: Container(alignment: Alignment.center,height: 50,width: 50,color: Colors.teal,margin: EdgeInsets.all(10),child: Text("${l[1]}"),)),
          InkWell(onTap: () => (is_win==false)?get(2):null,child: Container(alignment: Alignment.center,height: 50,width: 50,color: Colors.teal,margin: EdgeInsets.all(10),child: Text("${l[2]}"),)),
        ],),
        SizedBox(height: 10,width: 10,),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(onTap: () => (is_win==false)?get(3):null,child: Container(alignment: Alignment.center,height: 50,width: 50,color: Colors.teal,margin: EdgeInsets.all(10),child: Text("${l[3]}"),)),
            InkWell(onTap: () => (is_win==false)?get(4):null,child: Container(alignment: Alignment.center,height: 50,width: 50,color: Colors.teal,margin: EdgeInsets.all(10),child: Text("${l[4]}"),)),
            InkWell(onTap: () => (is_win==false)?get(5):null,child: Container(alignment: Alignment.center,height: 50,width: 50,color: Colors.teal,margin: EdgeInsets.all(10),child: Text("${l[5]}"),)),
          ],),
        SizedBox(height: 10,width: 10,),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(onTap: () => (is_win==false)?get(6):null,child: Container(alignment: Alignment.center,height: 50,width: 50,color: Colors.teal,margin: EdgeInsets.all(10),child: Text("${l[6]}"),)),
            InkWell(onTap: () => (is_win==false)?get(7):null,child: Container(alignment: Alignment.center,height: 50,width: 50,color: Colors.teal,margin: EdgeInsets.all(10),child: Text("${l[7]}"),)),
            InkWell(onTap: () => (is_win==false)?get(8):null,child: Container(alignment: Alignment.center,height: 50,width: 50,color: Colors.teal,margin: EdgeInsets.all(10),child: Text("${l[8]}"),)),
          ],),
        Container(
          margin: EdgeInsets.all(20),
          child: Text("$msg"),
        ),
        ElevatedButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return game();
          },));
        }, child: Text("reset"))
      ]),
    );
  }
}
