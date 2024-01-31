import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:p1/shayri/backend.dart';
import 'package:share_plus/share_plus.dart';

import 'backend1.dart';


class second extends StatefulWidget {
  // List a=[];
    int index;
   second(this.index);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  List <bool> temp=List.filled(datas.arr.length, false);
  List arr = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    switch(widget.index)
    {
        case 0:
          {
              // List img =["myassets/image/shayrii/a1.jpg"];
              arr = datas.ShubhkamnayeShayri;
              break;
          }
        case 1:
        {
          // List img =["myassets/image/shayrii/a1.jpg"];
          arr = datas.DostiShayri;
          break;
        }
        case 2:
        {
          // List img =["myassets/image/shayrii/a1.jpg"];
          arr = datas.MajedarShayri;
          break;
        }
        case 3:
        {
          // List img =["myassets/image/shayrii/a1.jpg"];
          arr = datas.BhagavanShayri;
          break;
        }
        case 4:
        {
          // List img =["myassets/image/shayrii/a1.jpg"];
          arr = datas.PrernaStrotrShayri;
          break;
        }
        case 5:
        {
          // List img =["myassets/image/shayrii/a1.jpg"];
          arr = datas.JeevanShayri;
          break;
        }
        case 6:
        {
          // List img =["myassets/image/shayrii/a1.jpg"];
          arr = datas.MohabbatShayri;
          break;
        }
        case 7:
        {
          // List img =["myassets/image/shayrii/a1.jpg"];
          arr = datas.YadeShayri;
          break;
        }
        case 8:
        {
          // List img =["myassets/image/shayrii/a1.jpg"];
          arr = datas.AanyShayri;
          break;
        }
        case 9:
        {
          // List img =["myassets/image/shayrii/a1.jpg"];
          arr = datas.RajneetiShayri;
          break;
        }
        case 10:
        {
          // List img =["myassets/image/shayrii/a1.jpg"];
          arr = datas.PremShayri;
          break;
        }
        case 11:
        {
          // List img =["myassets/image/shayrii/a1.jpg"];
          arr = datas.DardShayri;
          break;
        }
        case 12:
        {
          // List img =["myassets/image/shayrii/a1.jpg"];
          arr = datas.SharabShayri;
          break;
        }
        case 13:
        {
          // List img =["myassets/image/shayrii/a1.jpg"];
          arr = datas.BewafaShayri;
          break;
        }
        case 14:
        {
          // List img =["myassets/image/shayrii/a1.jpg"];
          arr = datas.JanmdinShayri;
          break;
        }
        case 15:
        {
          // List img =["myassets/image/shayrii/a1.jpg"];
          arr = datas.holiShayri;
          break;
        }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Love Shayri"),),

      body: ListView.builder(itemCount: arr.length,itemBuilder: (context, index) {
        return Card(child: GestureDetector(
          onTapUp: (details) {
            temp[index]=false;
            setState(() {

            });
          },
          onTapCancel: () {
            temp[index]=false;
            setState(() {

            });
          },
          onTapDown: (details) {
            temp[index]=true;
            setState(() {

            });
          },
          child:  ListTile(
            // textColor: Colors.pink,
            tileColor: (temp[index])?Colors.white:Colors.purpleAccent,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return third(arr,index);
              },));
            },
            // trailing: (temp[index])?Icon(Icons.arrow_forward_ios):null,
            trailing: Icon(Icons.arrow_forward_ios),
            leading: Container(
              width: 50,height: 50,
              decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill,
                  image: AssetImage("${datas.img[widget.index]}")
              )),
            ),
            title: Text(maxLines: 1,"${arr[index]}"),
          ),
        ),
        );
      },),
    );
  }
}

class third extends StatefulWidget {
List a;
int indexs;
third(this.a,this.indexs);
  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  int pos1 = 0, pos2 = 1;
  bool color_status = false;
  List col = [Colors.blue, Colors.deepPurple, Colors.purple, Colors.teal,Colors.pink,
    Colors.blue, Colors.deepPurple, Colors.purple, Colors.teal,Colors.pink,
    Colors.blue, Colors.deepPurple, Colors.purple, Colors.teal,Colors.pink,
    Colors.blue,Color.fromRGBO(246, 242, 250, 50)];
  List arr=[];

  PageController? controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=PageController(initialPage: widget.indexs);
  }
  @override
  Widget build(BuildContext context) {
    double screen_hieght = MediaQuery.of(context).size.height;
    double status_bar = MediaQuery.of(context).padding.top;
    double appbar_hieght = kToolbarHeight;
    return Scaffold(
      appBar: AppBar(title: Text("Love Shayri"),),

      body: Column(
        children: [
          Flexible(child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    // barrierColor: Colors.red,
                     barrierColor: Colors.transparent,
                    context: context, builder: (context) {
                      // return Container(color: Colors.lightGreenAccent,); half screen
                    return Container(height: screen_hieght-status_bar-appbar_hieght-10,
                      child: GridView.builder(itemCount: col.length-1,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemBuilder: (context, index) {
                          // return Container(color: col[index],);  single color gradiant
                          //double color gradiant ->
                          return InkWell(onTap: () {
                            pos1 = index;
                            pos2 = index+1;
                            color_status=true;
                            Navigator.pop(context);
                            setState(() {

                            });
                          },
                            child: Container(
                              child:
                              Text("${widget.a[widget.indexs]}"),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(gradient: LinearGradient(
                                colors: [col[index],col[index+1]],
                              )),
                            ),
                          );
                      },),
                    );
                  },);
              }, icon: Icon(Icons.refresh)),
               Text("${widget.indexs+1}/${widget.a.length}"),
              IconButton(onPressed: () {
                    color_status=true;
                    col.shuffle();
                    setState(() {

                    });
              }, icon: Icon(Icons.refresh)),
            ],
          )),
          Expanded(flex: 3,child: PageView.builder(
            itemCount: widget.a.length,
            controller: controller,
            onPageChanged: (value){
              widget.indexs=value;
              setState(() {

              });
            },
            itemBuilder: (context, index) {
            return Container(
              // decoration: BoxDecoration(color: Colors.green),  single color
              //gradiant
              decoration: BoxDecoration(color: (color_status==false)? Colors.green:null,
              // gradient: LinearGradient(colors: [col[0],col[1]]),  gradiant 1
              //  gradiant 2 ->
              //   gradient: (color_status==true) ? LinearGradient(colors: [col[0],col[1]]):null,
              //  pos 1 ane 2 mate
                gradient: (color_status==true) ? LinearGradient(colors: [col[pos1],col[pos2]]):null,
               ),
              height: 300,
              width: double.infinity,
              // color: Colors.pink,
              child: Text("${widget.a[index]}"),
              alignment: Alignment.center,
            );
          },)),
        SizedBox(height: 200,),
          Container(color: Colors.green,
            height: 50,
            width: double.infinity,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              IconButton(onPressed: () {
                Clipboard.setData(ClipboardData(text: "${widget.a[widget.indexs]}"));
              }, icon: Icon(Icons.copy)),
              IconButton(onPressed: () {
                if(widget.indexs>0)
                  {
                    widget.indexs--;
                  }
                else
                  {
                    widget.indexs;
                  }
                controller!.jumpToPage(widget.indexs);
                setState(() {

                 });
              }, icon: Icon(Icons.arrow_back_ios)),
              IconButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return five(widget.a,widget.indexs);

                },));
              }, icon: Icon(Icons.edit)),
              IconButton(onPressed: () {
                if (widget.indexs<widget.a.length-1)
                  {
                    widget.indexs++;
                  }
                else
                  {
                    widget.indexs;
                  }

                controller!.jumpToPage(widget.indexs);
                setState(() {

                });
              }, icon: Icon(Icons.arrow_forward_ios)),
                IconButton(onPressed: () {
                  Share.share("${widget.a[widget.indexs]}");
                }, icon: Icon(Icons.share)),
            ],),
          )
        ],
      ),
    );
  }
}
