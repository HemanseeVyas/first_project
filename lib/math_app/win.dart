import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:p1/math_app/data.dart';
import 'package:p1/math_app/h1.dart';
import 'package:p1/math_app/h2.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class winner extends StatefulWidget {
  // int index;
int level_no;
bool ?is_skip;
  winner(this.level_no,[this.is_skip]);

  @override
  State<winner> createState() => _winnerState();
}

class _winnerState extends State<winner> {
  Future<File> getImageFileFromAssets(String path) async {
    final byteData = await rootBundle.load('myassets/image/$path');

    final file = File('${(await getTemporaryDirectory()).path}/$path');
    await file.create(recursive: true);
    await file.writeAsBytes(byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));

    return file;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(image:
        DecorationImage(fit: BoxFit.fill,image: AssetImage("myassets/image/background.jpg"))),
        child: Column(children: [
          Expanded(child: Container(
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
            child: Text("PUZZLE ${widget.level_no} COMPLETED",
              style: TextStyle(fontSize: 20,fontFamily: "four",color: Colors.indigo,fontWeight: FontWeight.bold),
            ),
          )),
          Expanded(flex: 4,child: Container(
            height: double.infinity,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 140),
            decoration: BoxDecoration(image:
            DecorationImage(fit: BoxFit.fill,image: AssetImage("myassets/image/trophy.png"))),
          )),
          SizedBox(height: 10,),
          Expanded(flex: 3,child: Container(
            height: double.infinity,
            width: double.infinity,
            // color: Colors.orange,
            child: Column(children: [
              Expanded(child: InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return game2();
                },));
              },
                child: Container(
                  height: 40,
                  width: 200,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  // color: Colors.grey,
                  alignment: Alignment.center,
                  child: Text("CONTINUE",
                  style: TextStyle(fontSize: 20,fontFamily: "four",fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(border: Border.all(width: 1),color: Colors.grey,borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              )),
              Expanded(child: InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return game1();
                },));
              },
                child: Container(
                  height: 40,
                  width: 200,
                  margin: EdgeInsets.only(bottom: 10),
                  // color: Colors.grey,
                  alignment: Alignment.center,
                  child: Text("MAIN MENU",
                    style: TextStyle(fontSize: 20,fontFamily: "four",fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(border: Border.all(width: 1),color: Colors.grey,borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              )),
              Expanded(child:
              InkWell(onTap: () {
                showDialog(barrierDismissible: false,
                  // barrierColor: Colors.transparent,
                  context: context, builder: (context) {
                    return AlertDialog(
                      title: Column(mainAxisAlignment: MainAxisAlignment.start,children: [
                        Text("Benefits of pro version",style: TextStyle(color: Colors.indigo),),
                        Text("1. No Ads"),
                        Text("2. No wait time for hint and skip"),
                        Text("3. Hint for every level"),
                        Text("4. Solution for every level"),
                        Row(children: [
                          InkWell(onTap: () {
                            Navigator.pop(context);
                          },
                            child: Container(
                              height: 40,
                              width: 60,
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                              // color: Colors.grey,
                              alignment: Alignment.center,
                              child: Text("Buy",
                                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(border: Border.all(width: 1),color: Colors.grey,borderRadius: BorderRadius.all(Radius.circular(10))),
                            ),
                          ),
                          SizedBox(width: 5,),
                          InkWell(onTap: () {
                            Navigator.pop(context);
                          },
                            child: Container(
                              height: 40,
                              width: 140,
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                              // color: Colors.grey,
                              alignment: Alignment.center,
                              child: Text("No Thanks",
                                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(border: Border.all(width: 1),color: Colors.grey,borderRadius: BorderRadius.all(Radius.circular(10))),
                            ),
                          ),
                        ],)
                      ]),
                    );
                  },);
              },
                child: Container(
                  height: 40,
                  width: 200,
                  // color: Colors.grey,
                  margin: EdgeInsets.only(bottom: 10),
                  alignment: Alignment.center,
                  child: Text("BUY PRO",
                    style: TextStyle(fontSize: 20,fontFamily: "four",fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(border: Border.all(width: 1),color: Colors.grey,borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              )),
            ]),
          )),
          Expanded(child: Container(
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
            child: Text("SHARE THIS PUZZLE",
              style: TextStyle(fontSize: 20,fontFamily: "four",fontWeight: FontWeight.bold,color: Colors.indigo),
            ),
          ),
          ),
          Expanded(child:
          InkWell(onTap: () {
            getImageFileFromAssets("myassets/image/").then((value) {
              Share.shareFiles(['${value.path}']);
            });
            setState(() {

            });
          },
            child: Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(220, 10, 220, 0),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("myassets/image/shareus.png")),
                  color: Colors.grey,border: Border.all(width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          )),
          Expanded(child: Container(
            height: double.infinity,
            width: double.infinity,
          )),
        ]),
      ),
      ),
    );
  }
}
