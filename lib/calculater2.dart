
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
  String ans = "";
  String a1 = "";
  String a2 = "";
  int t=0;
  get(String a)
  {
      if(a=="C")
        {
            ans ="";
        }else if(a=="CE")
        {
            ans = ans.substring(0,ans.length-1);
        }else if(a=="+")
        {
                a1=ans;
                t=1;
                ans="";
        }else if(a=="-")
        {
              a1=ans;
              t=2;
              ans="";
        }else if(a=="*")
        {
            a1=ans;
            t=3;
            ans="";
        }else if(a=="/")
        {
            a1=ans;
            t=4;
            ans="";
         }else if(a=="=")
           {
             int x,y;
             x=int.parse(a1);
             y=int.parse(ans);
             int c=0;
             if(t==1)
             {
                 c=x+y;
             }else if(t==2)
             {
                  c=x-y;
             }else if(t==3)
             {
                  c=x*y;
             }else if(t==4)
               {
                  c=(x/y).toInt();
               }
             ans=c.toString();
           }else
             {
                  ans = ans + "$a";
             }
      setState(() {

      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
        title: Text("Calculater"),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.all(10),
            color: Colors.blueGrey,
            child: Text("$ans",style: TextStyle(fontSize: 20),),
          ),
          SizedBox(
            height: 10,
            width: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            InkWell(onTap: () => get("1"),child: Container(alignment: Alignment.center,width: 60,height: 60, color: Colors.black26,child: Text("1"),)),
            InkWell(onTap: () => get("2"),child: Container(alignment: Alignment.center,width: 60,height: 60, color: Colors.black26,child: Text("2"),)),
            InkWell(onTap: () => get("3"),child: Container(alignment: Alignment.center,width: 60,height: 60, color: Colors.black26,child: Text("3"),)),
            InkWell(onTap: () => get("+"),child: Container(alignment: Alignment.center,width: 60,height: 60, color: Colors.black26,child: Text("+"),)),
          ],),
          SizedBox(
            height: 10,
            width: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(onTap: () => get("4"),child: Container(alignment: Alignment.center,width: 60,height: 60, color: Colors.black26,child: Text("4"),)),
              InkWell(onTap: () => get("5"),child: Container(alignment: Alignment.center,width: 60,height: 60, color: Colors.black26,child: Text("5"),)),
              InkWell(onTap: () => get("6"),child: Container(alignment: Alignment.center,width: 60,height: 60, color: Colors.black26,child: Text("6"),)),
              InkWell(onTap: () => get("-"),child: Container(alignment: Alignment.center,width: 60,height: 60, color: Colors.black26,child: Text("-"),)),
            ],),
          SizedBox(
            height: 10,
            width: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(onTap: () => get("7"),child: Container(alignment: Alignment.center,width: 60,height: 60, color: Colors.black26,child: Text("7"),)),
              InkWell(onTap: () => get("8"),child: Container(alignment: Alignment.center,width: 60,height: 60, color: Colors.black26,child: Text("8"),)),
              InkWell(onTap: () => get("9"),child: Container(alignment: Alignment.center,width: 60,height: 60, color: Colors.black26,child: Text("9"),)),
              InkWell(onTap: () => get("*"),child: Container(alignment: Alignment.center,width: 60,height: 60, color: Colors.black26,child: Text("*"),)),
            ],),
          SizedBox(
            height: 10,
            width: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(onTap: () => get("0"),child: Container(alignment: Alignment.center,width: 60,height: 60, color: Colors.black26,child: Text("0"),)),
              InkWell(onTap: () => get("="),child: Container(alignment: Alignment.center,width: 60,height: 60, color: Colors.black26,child: Text("="),)),
              InkWell(onTap: () => get("C"),child: Container(alignment: Alignment.center,width: 60,height: 60, color: Colors.black26,child: Text("C"),)),
              InkWell(onTap: () => get("/"),child: Container(alignment: Alignment.center,width: 60,height: 60, color: Colors.black26,child: Text("/"),)),
            ],),
          SizedBox(
            height: 10,
            width: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(onTap: () => get("CE"),child: Container(alignment: Alignment.center,width: 60,height: 60, color: Colors.black26,child: Text("CE"),)),
              InkWell(onTap: () => get("."),child: Container(alignment: Alignment.center,width: 60,height: 60, color: Colors.black26,child: Text("."),)),

            ],)
        ],
      ),
    );
  }
}
