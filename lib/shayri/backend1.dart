import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:external_path/external_path.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

class five extends StatefulWidget {
  List a;
  int indexs;
  five(this.a,this.indexs);

  @override
  State<five> createState() => _fiveState();
}

class _fiveState extends State<five> {
  // WidgetsToImageController to access widget
  WidgetsToImageController controller = WidgetsToImageController();
// to save image bytes of widget
  Uint8List? bytes;
  double a=10;
  Color c=Colors.red;
  int f1=0;
  int e1=0;
  bool Font_status=false;
  bool Font_width=false;
  int pos1 = 0;
  bool text=false;
  bool color_status=false;
  int emoji=0;
  bool emojis=false;
  List col = [Colors.blue, Colors.deepPurple, Colors.purple, Colors.teal,Colors.pink,
    Colors.blue, Colors.deepPurple, Colors.purple, Colors.teal,Colors.pink,
    Colors.blue, Colors.deepPurple, Colors.purple, Colors.teal,Colors.pink,
    Colors.blue,Color.fromRGBO(246, 242, 250, 50)];
  List Font=[
    FontWeight.bold,
    FontWeight.w100,
    FontWeight.w200,
    FontWeight.bold,
    FontWeight.w400,
    FontWeight.w500,
    FontWeight.bold,
    FontWeight.w600,
    FontWeight.bold,
    FontWeight.w800,
    FontWeight.bold,
  ];
  String cur_emoji="😍😘🥰🤩😇🥳";
  List emojii=[
    "😍😍😍😍😍😍😍😍😍",
    "😘😘😘😘😘😘😘😘😘",
    "😊😊😊😊😊😊😊😊😊",
    "❤❤❤❤❤❤❤❤❤❤❤❤",
    "🌹🌹🌹🌹🌹🌹🌹🌹🌹🌹🌹🌹🌹",
    "✨✨✨✨✨✨✨✨✨",
    "😇😇😇😇😇😇😇😇😇"
  ];
  @override
  void initState() {
    // TODO: implement initState
    permission();
  }
  permission()
  async {
    var status = await Permission.storage.status;
    if (status.isDenied) {
      // We didn't ask for permission yet or the permission has been denied before but not permanently.
      Map<Permission, PermissionStatus> statuses = await [
        Permission.location,
        Permission.storage,
      ].request();
      print(statuses[Permission.location]);
    }
  }
  @override
  Widget build(BuildContext context) {
    double screen_hieght = MediaQuery.of(context).size.height;
    double status_bar = MediaQuery.of(context).padding.top;
    double appbar_hieght = kToolbarHeight;
    return Scaffold(
      appBar: AppBar(
        title: Text("Love Shayri"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: (color_status==false) ? c:Colors.red,
              gradient: (color_status==true) ? LinearGradient(colors: [col[pos1],col[pos1+1]])
                  :null,
            ),
            height: 300,
            width: double.infinity,
            // color: Colors.pink,
            alignment: Alignment.center,
            child: Text((emojis==false)?"${widget.a[widget.indexs]}":"${emojii[emoji]}\n${widget.a[widget.indexs]}",
              style: TextStyle(fontSize: a,
                color: (text==false)?Colors.black:col[pos1],
                fontWeight: (Font_status==false)?FontWeight.bold:Font[f1],
                // emoji: (emoji_1==false)?
            ),
            ),
          ),
           SizedBox(height: 74),
           Expanded(
             child: Container(
               width: double.infinity,
               height: 150,
               color: Colors.deepPurple,

               child: Column(
                 children: [
                   Row(mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Container(
                         height: 40,
                         width: 100,
                         color: Colors.cyanAccent,

                         child: Row(mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             IconButton(onPressed: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                barrierColor: Colors.transparent,
                                context: context, builder: (context) {
                                return Container(height: screen_hieght-status_bar-appbar_hieght-10,
                                  child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                  ),
                                      itemBuilder: (context, index) {
                                       return InkWell(onTap: () {
                                         pos1 = index;
                                         // pos2 = index+1;
                                         color_status=true;
                                         Navigator.pop(context);
                                         setState(() {

                                         });
                                       },
                                         child: Container(
                                           child:
                                           Text("😊😘💕❤Happy shayri❤💕😘😊"),
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
                             IconButton(onPressed: () {
                               color_status=true;
                               col.shuffle();
                               setState(() {

                               });
                             }, icon: Icon(Icons.refresh)),

                           ],
                         ),
                       ),
                     ],
                   ),
                   Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(onTap: () {
                        showModalBottomSheet(barrierColor: Colors.transparent ,context: context, builder:  (context) {
                          return Container(height: 120,
                            child: Column(children: [
                              Expanded(child: Row(children: [Expanded(
                                  child:  GridView.builder(
                                    itemCount: col.length-1,
                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 11,
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10,
                                    ),
                                    itemBuilder: (context, index) {
                                      // return Container(color: col[index],);  single color gradiant
                                      //double color gradiant ->
                                      return InkWell(onTap: () {
                                        // pos1 = index;
                                        // // pos2 = index+1;
                                        // color_status=true;
                                        c=col[index];
                                        color_status=false;
                                        Navigator.pop(context);
                                        setState(() {

                                        });
                                      },
                                        child: Container(
                                          height: 50,
                                          width: 70,
                                          // child:
                                          // Text("${widget.a[widget.indexs]}"),
                                          alignment: Alignment.center,
                                          color: col[index],
                                          // decoration: BoxDecoration(gradient: LinearGradient(
                                          //   colors: [col[index],col[index+1]],
                                          // )),
                                        ),
                                      );
                                    },),),
                                Row(children: [
                                  Column(children: [
                                    InkWell(onTap: () {
                                      Navigator.pop(context);
                                    },
                                      child: Container(width: 30,height: 30,
                                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(
                                          "myassets/image/close.png",
                                        ))
                                        ),
                                      ),
                                    ),
                                  ],)
                                ],
                                ),
                              ],
                              )),
                            ]),

                          );

                        },);
                      },
                        child: Container(margin: EdgeInsets.all(5),
                        height: 50,
                        width: 90,
                        color: Colors.orange,
                          alignment: Alignment.center,
                          child: Text("Backgroung"),
                    ),
                      ),

                      InkWell(onTap: () {
                        showModalBottomSheet(barrierColor: Colors.transparent,context: context, builder: (context) {
                          return Container(height: 200,
                              child:
                              Column(children: [

                                Expanded(child:
                                Row(children: [
                                   Expanded(
                                    child: GridView.builder(itemCount: col.length,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 8,
                                        mainAxisSpacing: 5,
                                        crossAxisSpacing: 5,
                                      ), itemBuilder: (context, index) {
                                        return InkWell(onTap: () {
                                          pos1=index;
                                          text=true;
                                          setState(() {
                                          });
                                        },
                                          child: Container(width: 70,height: 40,color: col[index]),
                                        );
                                      },),
                                  ),
                                  Row(children: [
                                    Column(children: [
                                      InkWell(onTap: () {
                                        Navigator.pop(context);
                                      },
                                        child: Container(width: 30,height: 30,
                                          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(
                                            "myassets/image/close.png",
                                          ))
                                          ),
                                        ),
                                      ),
                                    ],)
                                  ],
                                  ),
                                ],),
                                ),
                              ],),

                          );
                        },);
                      },
                        child: Container(margin: EdgeInsets.all(5),
                          height: 50,
                          width: 90,
                          color: Colors.orange,
                          alignment: Alignment.center,
                          child: Text("Text Color"),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          //widget to image
                          final bytes = await controller.capture();
                          //external path
                          var path = await ExternalPath.getExternalStoragePublicDirectory(ExternalPath.DIRECTORY_DOWNLOADS);
                          print(path);
                          Directory dir = Directory(path);
                          if(!await dir.exists())
                            {
                              dir.create();
                            }
                          int r=Random().nextInt(100);
                          String img_name="${r}.png";
                          File f=File("${dir.path}/${img_name}");
                          await f.writeAsBytes(bytes !);
                          Share.shareXFiles([XFile("${f.path}")], text: 'Great picture');
                          setState(() {

                          });
                        },
                        child: Container(margin: EdgeInsets.all(5),
                            height: 50,
                            width: 90,
                            color: Colors.orange,
                            alignment: Alignment.center,
                            child: Text("Share"),
                          ),
                      ),
                    ],
                   ),
                   Expanded(
                     child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         InkWell(onTap: () {
                           showModalBottomSheet(barrierColor: Colors.transparent,context: context, builder: (context) {
                             return Container(
                               height: 100,
                               child: Row(children: [
                                Expanded(
                                  child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: Font.length,itemBuilder: (context, index) {
                                    return InkWell(onTap: () {
                                      f1=index;
                                    Font_status=true;
                                      Navigator.pop(context);
                                      setState(() {
                                      });
                                    },
                                      child: Container(color: Colors.pink,
                                        margin: EdgeInsets.fromLTRB(10, 20, 0, 30),alignment: Alignment.center,height: 20,width: 50,
                                      child: Text("shayri",style: TextStyle(fontSize: 15,fontWeight: Font[index]),),),
                                    );
                                  },),
                                ),
                                 Row(children: [
                                   Column(children: [
                                     InkWell(onTap: () {
                                       Navigator.pop(context);
                                     },
                                       child: Container(width: 30,height: 30,
                                         decoration: BoxDecoration(image: DecorationImage(image: AssetImage(
                                           "myassets/image/close.png",
                                         ))
                                         ),
                                       ),
                                     ),
                                   ],)
                                 ],
                                 ),
                               ],)
                             );
                           },);
                         },
                           child: Container(margin: EdgeInsets.all(5),
                             height: 50,
                             width: 90,
                             color: Colors.orange,
                             alignment: Alignment.center,
                             child: Text("Font"),
                           ),
                         ),
                         InkWell(onTap: () {
                           showModalBottomSheet(barrierColor: Colors.transparent,
                           context: context, builder: (context) {
                             return Container(
                               height: 200,
                               color: Colors.purpleAccent,
                               child: ListView.separated(itemCount: emojii.length,itemBuilder: (context, index) {
                                 return ListTile(onTap: () {
                                   emoji=index;
                                   emojis=true;
                                   setState(() {

                                   });
                                 },
                                     tileColor: Colors.black,
                                   title: Text("${emojii[index]}"),
                                     );
                               }, separatorBuilder: (context, index) {
                                    return Divider(thickness: 3);
                               }, ),
                             );
                           },);
                         },
                           child: Container(margin: EdgeInsets.all(5),
                             height: 50,
                             width: 90,
                             color: Colors.orange,
                             alignment: Alignment.center,
                             child: Text("Emoji"),
                           ),
                         ),
                         InkWell(onTap: () {
                           showModalBottomSheet(barrierColor: Colors.transparent,context: context, builder: (context) {
                             return Container(
                               height: 200,
                                child: StatefulBuilder(builder: (context, setState1) {
                                  return Slider(
                                    min: 0,
                                      max: 100,
                                      value: a,
                                      onChanged: (value) {
                                        a=value;
                                        setState( (){

                                        });
                                        setState1(() {

                                        });
                                      },
                                  );
                                },),
                             );
                           },
                           );
                         },
                           child: Container(margin: EdgeInsets.all(5),
                             height: 50,
                             width: 90,
                             color: Colors.orange,
                             alignment: Alignment.center,
                             child: Text("Text Size"),
                           ),
                         ),
                       ],
                     ),
                   )
                 ],
               ),
             ),
           ),
        ],
      )
    );
  }
}
