import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: first(),
  ));
}

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _ticState();
}

class _ticState extends State<first> {
  List l = ["","","","","","","","",""];
  int t=0;
  String a="";
  String msg="";
  bool is_win = false;
  get(int a)
  {
        for(int i=0;i<l.length; i++)
        {
              if(t%2==0)
              {
                if(l[a]=='x')
                  {
                    l[a]="x";
                  }else
                    {
                      l[a]="0";
                    }
                  setState(() {

                  });
              } else {
                // l[a]="0";
                if(l[a]=='0')
                {
                  l[a]="0";
                }else
                {
                  l[a]="x";
                }
                setState(() {
               });
              }
              t++;
              win();
        }
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
          || (l[0]=="0" && l[4]=="0" && l[8]=="0") || (l[2]=="0" && l[4]=="0" && l[6]=="0"))
      {
            msg="0 is win";
            is_win=true;
      }else if(l[0]!="" && l[1]!="" && l[2]!="" && l[3]!="" && l[4]!="" && l[5]!="" && l[6]!="" && l[7]!="" && l[8]!="")
      {
            msg = "match draw....";
      }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tik Tok"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(onTap:() => (is_win==false) ? get(0) : null, child: Container(alignment: Alignment.center, child: Text("${l[0]}", style: TextStyle(fontSize: 25, color: Colors.black),),
                    width: 50,
                    height: 50,
                    color: Colors.teal,
                    margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                  )),
              InkWell(onTap: () => (is_win==false) ? get(1) : null, child: Container(alignment: Alignment.center, child: Text("${l[1]}",style: TextStyle(fontSize: 25, color: Colors.black),),
                      width: 50,
                      height: 50,
                      color: Colors.teal,
                      margin: EdgeInsets.fromLTRB(10, 20, 10, 0))),
              InkWell(onTap: () => (is_win==false) ? get(2) : null,child: Container(alignment: Alignment.center,child: Text("${l[2]}",style: TextStyle(fontSize: 25, color: Colors.black),),
                      width: 50,
                      height: 50,
                      color: Colors.teal,
                      margin: EdgeInsets.fromLTRB(10, 20, 10, 0))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(onTap: () => (is_win==false) ? get(3) : null,child: Container(alignment: Alignment.center,child: Text("${l[3]}",style: TextStyle(fontSize: 25, color: Colors.black),),
                    width: 50,
                    height: 50,
                    color: Colors.teal,
                    margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                  )),
              InkWell(onTap: () => (is_win==false) ? get(4) : null,child: Container( alignment: Alignment.center,child: Text("${l[4]}",style: TextStyle(fontSize: 25, color: Colors.black),),
                      width: 50,
                      height: 50,
                      color: Colors.teal,
                      margin: EdgeInsets.fromLTRB(10, 20, 10, 0))),
              InkWell(onTap: () => (is_win==false) ? get(5) : null,child: Container( alignment: Alignment.center,child: Text("${l[5]}",style: TextStyle(fontSize: 25, color: Colors.black),),
                      width: 50,
                      height: 50,
                      color: Colors.teal,
                      margin: EdgeInsets.fromLTRB(10, 20, 10, 0))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(onTap: () => (is_win==false) ? get(6) : null,child: Container( alignment: Alignment.center,child: Text("${l[6]}",style: TextStyle(fontSize: 25, color: Colors.black),),
                      width: 50,
                      height: 50,
                      color: Colors.teal,
                      margin: EdgeInsets.fromLTRB(10, 20, 10, 0))),
              InkWell(onTap: () => (is_win==false) ? get(7) : null,child: Container( alignment: Alignment.center,child: Text("${l[7]}",style: TextStyle(fontSize: 25, color: Colors.black),),
                      width: 50,
                      height: 50,
                      color: Colors.teal,
                      margin: EdgeInsets.fromLTRB(10, 20, 10, 0))),
              InkWell(onTap: () => (is_win==false) ? get(8) : null, child: Container( alignment: Alignment.center,child: Text("${l[8]}",style: TextStyle(fontSize: 25, color: Colors.black),),
                width: 50,
                height: 50,
                color: Colors.teal,
                margin: EdgeInsets.fromLTRB(10, 20, 10, 0))),
            ],
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Text("$msg",style: TextStyle(fontSize: 20),),
          ),
          ElevatedButton(onPressed: () {
            l=List.filled(9, "");
            msg="";
            for(int i=0; i<l.length; i++)
            {
                 l[i]="";
                 is_win=false;
            }
            setState(() {

            });

          }, child: Text("RESET"))
        ],
      ),
    );
  }
}