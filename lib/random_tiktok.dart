import 'dart:math';

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
  List l=[];
  String msg ="";
  String a="";
  int t=0;
  int r=0;
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
          // cnt++;
          if(l[a]=="")
          {
                  if(t%2==0)
                    {
                        l[a]="x";
                        t++;
                        print(t);
                        cnt++;
                        win();
                    }
          }
          while(l[r]!="")
           {
                 // if(l[r]!="")
                   // {
                     r=Random().nextInt(9);
                     // cnt++;
                   // }

                 // cnt++;
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
      }else if(t==9)
      {
            msg = "match draw....";
            // is_win==false;
      }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("Tik_Tok Toe Game"),),
      body:Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(onTap: () => (is_win==false) ? get(0) : null,child: Container(width: 60,height: 60,color: Colors.blueGrey,alignment: Alignment.center,margin: EdgeInsets.all(10),child: Text("${l[0]}"),),),
              InkWell(onTap: () => (is_win==false) ? get(1) : null,child: Container(width: 60,height: 60,color: Colors.blueGrey,alignment: Alignment.center,margin: EdgeInsets.all(10),child: Text("${l[1]}"),)),
              InkWell(onTap: () => (is_win==false) ? get(2) : null,child: Container(width: 60,height: 60,color: Colors.blueGrey,alignment: Alignment.center,margin: EdgeInsets.all(10),child: Text("${l[2]}"),)),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(onTap: () => (is_win==false) ? get(3) : null,child: Container(width: 60,height: 60,color: Colors.blueGrey,alignment: Alignment.center,margin: EdgeInsets.all(10),child: Text("${l[3]}"),)),
              InkWell(onTap: () => (is_win==false) ? get(4) : null,child: Container(width: 60,height: 60,color: Colors.blueGrey,alignment: Alignment.center,margin: EdgeInsets.all(10),child: Text("${l[4]}"),)),
              InkWell(onTap: () => (is_win==false) ? get(5) : null,child: Container(width: 60,height: 60,color: Colors.blueGrey,alignment: Alignment.center,margin: EdgeInsets.all(10),child: Text("${l[5]}"),)),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(onTap: () => (is_win==false) ? get(6) : null,child: Container(width: 60,height: 60,color: Colors.blueGrey,alignment: Alignment.center,margin: EdgeInsets.all(10),child: Text("${l[6]}"),)),
              InkWell(onTap: () => (is_win==false) ? get(7) : null,child: Container(width: 60,height: 60,color: Colors.blueGrey,alignment: Alignment.center,margin: EdgeInsets.all(10),child: Text("${l[7]}"),)),
              InkWell(onTap: () => (is_win==false) ? get(8) : null,child: Container(width: 60,height: 60,color: Colors.blueGrey,alignment: Alignment.center,margin: EdgeInsets.all(10),child: Text("${l[8]}"),)),
            ],
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Text("$msg",style: TextStyle(fontSize: 20),),
          ),
          ElevatedButton(onPressed: () {
                // msg = "";
                // for(int i=0; i<l.length; i++)
                //   {
                //       l[i]="";
                //       t==0;
                //       is_win=false;
                //   }
                // setState(() {
                //
                // });
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return first();
                },));
          }, child: Text("RESET")),
        ],
      )
    );
  }
}
