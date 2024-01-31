import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: first(),
    ));
}
class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
   List l=[];
   String msg="";
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    l=List.filled(9, "");
    for(int i=0;i<l.length;i++)
      {
           int r=Random().nextInt(9);
            if(!l.contains(r))
            {
                 l[i]=r;
            }
            else
            {
                i--;
            }
      }
    for(int i=0; i<l.length; i++)
      {
          if(l[i]==0)
          {
              l[i]="";
          }
      }
  }
  win()
  {
        if(l[0]==1 && l[1]==2 && l[2]==3 && l[3]==4 && l[4]==5 && l[5]==6 && l[6]==7 && l[7]==8 && l[8]=="")
        {
          msg="you are win....!";
        }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Puzzle"),),
      body: Column(
        children: [
          SizedBox(
            width: 20,
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              InkWell(onTap:() {
                if(l[1]=="")
                  {
                    l[1]=l[0];
                    l[0]="";
                  }
                else if(l[3]=="")
                  {
                    l[3]=l[0];
                    l[0]="";
                  }
                setState(() {

                });
              },child: Container(alignment: Alignment.center,child: Text("${l[0]}",style: TextStyle(fontSize: 25, color: Colors.black),),
                width: 50,
                height: 50,
                color: Colors.teal,
                margin: EdgeInsets.fromLTRB(10, 20, 10, 0),),),
              InkWell(onTap:() {
                if(l[0]=="")
                {
                  l[0]=l[1];
                  l[1]="";
                }
                else if(l[4]=="")
                {
                  l[4]=l[1];
                  l[1]="";
                }
                else if(l[2]=="")
                {
                  l[2]=l[1];
                  l[1]="";
                }
                setState(() {

                });
              },child: Container(alignment: Alignment.center,child: Text("${l[1]}",style: TextStyle(fontSize: 25, color: Colors.black),),
                width: 50,
                height: 50,
                color: Colors.teal,
                margin: EdgeInsets.fromLTRB(10, 20, 10, 0),),),
              InkWell(onTap:() {
                if(l[1]=="")
                {
                  l[1]=l[2];
                  l[2]="";
                }
                else if(l[5]=="")
                {
                  l[5]=l[2];
                  l[2]="";
                }
                setState(() {

                });
              },child: Container(alignment: Alignment.center,child: Text("${l[2]}",style: TextStyle(fontSize: 25, color: Colors.black),),
                width: 50,
                height: 50,
                color: Colors.teal,
                margin: EdgeInsets.fromLTRB(10, 20, 10, 0),),)
              ],),

          SizedBox(
            width: 20,
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(onTap:() {
                if(l[0]=="")
                {
                  l[0]=l[3];
                  l[3]="";
                }
                else if(l[4]=="")
                {
                  l[4]=l[3];
                  l[3]="";
                }
                else if(l[6]=="")
                {
                  l[6]=l[3];
                  l[3]="";
                }
                setState(() {

                });
              },child: Container(alignment: Alignment.center,child: Text("${l[3]}",style: TextStyle(fontSize: 25, color: Colors.black),),
                width: 50,
                height: 50,
                color: Colors.teal,
                margin: EdgeInsets.fromLTRB(10, 20, 10, 0),),),
              InkWell(onTap:() {
                if(l[1]=="")
                {
                  l[1]=l[4];
                  l[4]="";
                }
                else if(l[3]=="")
                {
                  l[3]=l[4];
                  l[4]="";
                }
                else if(l[7]=="")
                {
                  l[7]=l[4];
                  l[4]="";
                }else if(l[5]=="")
                  {
                    l[5]=l[4];
                    l[4]="";
                  }
                setState(() {

                });
              },child: Container(alignment: Alignment.center,child: Text("${l[4]}",style: TextStyle(fontSize: 25, color: Colors.black),),
                width: 50,
                height: 50,
                color: Colors.teal,
                margin: EdgeInsets.fromLTRB(10, 20, 10, 0),),),
              InkWell(onTap:() {
                if(l[2]=="")
                {
                  l[2]=l[5];
                  l[5]="";
                }
                else if(l[4]=="")
                {
                  l[4]=l[5];
                  l[5]="";
                }
                else if(l[8]=="")
                {
                  l[8]=l[5];
                  l[5]="";
                }
                setState(() {

                });
              },child: Container(alignment: Alignment.center,child: Text("${l[5]}",style: TextStyle(fontSize: 25, color: Colors.black),),
                width: 50,
                height: 50,
                color: Colors.teal,
                margin: EdgeInsets.fromLTRB(10, 20, 10, 0),),)
            ],),
          SizedBox(
            width: 20,
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(onTap:() {
                if(l[3]=="")
                {
                  l[3]=l[6];
                  l[6]="";
                }
                else if(l[7]=="")
                {
                  l[7]=l[6];
                  l[6]="";
                }
                setState(() {

                });
              },child: Container(alignment: Alignment.center,child: Text("${l[6]}",style: TextStyle(fontSize: 25, color: Colors.black),),
                width: 50,
                height: 50,
                color: Colors.teal,
                margin: EdgeInsets.fromLTRB(10, 20, 10, 0),),),
              InkWell(onTap:() {
                if(l[6]=="")
                {
                  l[6]=l[7];
                  l[7]="";
                }
                else if(l[4]=="")
                {
                  l[4]=l[7];
                  l[7]="";
                }
                else if(l[8]=="")
                {
                  l[8]=l[7];
                  l[7]="";
                }
                setState(() {

                });
              },child: Container(alignment: Alignment.center,child: Text("${l[7]}",style: TextStyle(fontSize: 25, color: Colors.black),),
                width: 50,
                height: 50,
                color: Colors.teal,
                margin: EdgeInsets.fromLTRB(10, 20, 10, 0),),),
              InkWell(onTap:() {
                if(l[5]=="")
                {
                  l[5]=l[8];
                  l[8]="";
                }
                else if(l[7]=="")
                {
                  l[7]=l[8];
                  l[8]="";
                }
                setState(() {

                });
              },child: Container(alignment: Alignment.center,child: Text("${l[8]}",style: TextStyle(fontSize: 25, color: Colors.black),),
                width: 50,
                height: 50,
                color: Colors.teal,
                margin: EdgeInsets.fromLTRB(10, 20, 10, 0),),)
            ],),

          Container(
            margin: EdgeInsets.all(20),
            child: Text("$msg",style: TextStyle(fontSize: 20),),
          ),
          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return first();
            },));
          }, child: Text("RESET")),
        ],
      )
    );
  }
}
