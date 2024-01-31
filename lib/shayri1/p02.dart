import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:p1/shayri1/p01.dart';
import 'package:share_plus/share_plus.dart';

class seconds extends StatefulWidget {
  int index;
   seconds(this.index);

  @override
  State<seconds> createState() => _secondsState();
}

class _secondsState extends State<seconds> {
    List arr=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    switch(widget.index)
    {
      case 0:
        {
              arr = hello.a1;
              break;
        }
      case 1:
        {
          arr = hello.bbb;
          break;
        }
      case 2:
        {
          arr = hello.c1;
          break;
        }

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Love shayri"),actions: [
        Icon(Icons.share),
        Icon(Icons.more_vert),
      ],),

      body: ListView.builder(itemCount: arr.length,itemBuilder: (context, index) {
        return Card(
          child: ListTile(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return third(index,arr);
            },));
          },
            tileColor: Colors.pink,
            trailing: Icon(Icons.arrow_forward_ios),
            leading: Container(height: 50,width: 50,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("${hello.img[widget.index]}"))),),
            title:  Text(maxLines: 1,"${arr[index]}"),
          )
        );
      },),
    );
  }
}


class third extends StatefulWidget {
  List a;
  int indexs;
   third(this.indexs,this.a);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  List col=[
    Colors.green,
    Colors.pink,
    Colors.purpleAccent,
    Colors.orange,
    Colors.cyanAccent,
    Colors.red,
    Colors.teal,
    Color.fromRGBO(425, 232, 256, 50)
  ];
  bool col_status=false;
  PageController ? controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=PageController(initialPage: widget.indexs);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Love Shayri"),actions: [
        Icon(Icons.share),
        Icon(Icons.more_vert),
      ],),
      body:
       Column(children: [
         Row(mainAxisAlignment: MainAxisAlignment.center,children: [
           IconButton(onPressed: () {

           }, icon: Icon(Icons.refresh)),
           Text("${widget.indexs+1}/${widget.a.length}"),
           IconButton(onPressed: () {
             col_status=true;
              col.shuffle();
              setState(() {

              });
           }, icon: Icon(Icons.refresh)),
         ],),
         Expanded(flex: 3,child: PageView.builder(itemCount: widget.a.length,
           controller: controller,
           onPageChanged: (value)
           {
             widget.indexs=value;
             setState(() {

             });
           },
           itemBuilder:  (context, index) {
           return Container(
             height: 300,
             // color: Colors.pink,
             alignment: Alignment.center,
             decoration: BoxDecoration(color: (col_status==false)?Colors.teal:null,
             gradient: LinearGradient(colors: [col[0],col[1]])),
             child: Text("${widget.a[index]}"),
           );
         },
         ),
         ),
         SizedBox(height: 100,),
           Container(
             height: 70,
             width: double.infinity,
             color: Colors.green,
             child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: () {
                Clipboard.setData(ClipboardData(text: "${widget.a[widget.indexs]}"));
                }, icon: Icon(Icons.copy_outlined)),
                IconButton(onPressed: () {
                  (widget.indexs>0)?widget.indexs--:widget.indexs;
                  controller!.jumpToPage(widget.indexs);
                  setState(() {

                  });
                }, icon: Icon(Icons.arrow_back_ios)),
                IconButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return forth();
                },));
                }, icon: Icon(Icons.edit)),
                IconButton(onPressed: () {
                  (widget.indexs>0)?widget.indexs++:widget.indexs;
                  controller!.jumpToPage(widget.indexs);
                  setState(() {

                  });
                }, icon: Icon(Icons.arrow_forward_ios)),
                IconButton(onPressed: () {
                  Share.share('${widget.a[widget.indexs]}');
                }, icon: Icon(Icons.share))
              ]),
           )
       ],),
    );
  }
}

class forth extends StatefulWidget {
  const forth({super.key});

  @override
  State<forth> createState() => _forthState();
}

class _forthState extends State<forth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Love Shayri"),),
    );
  }
}
