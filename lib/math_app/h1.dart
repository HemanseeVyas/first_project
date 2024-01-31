import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:p1/math_app/data.dart';
import 'package:p1/math_app/h2.dart';
import 'package:p1/math_app/lock.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: game1(),));
}
class game1 extends StatefulWidget {
   static SharedPreferences ? prefs;
  // const game1({super.key});

  @override
  State<game1> createState() => _game1State();
}

class _game1State extends State<game1> {
  bool temp=false;
  bool temp1=false;
  bool temp2=false;
  List l=[];
  int length=0;
  int level_no=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get_pref();
  }
  get_pref()
  async {
    game1.prefs = await SharedPreferences.getInstance();
    int levelno=game1.prefs!.getInt("level_no") ?? 0;
    l=List.filled(config.ans.length, "no");
    print("LevelNO${levelno}");
    for(int i=0; i<levelno; i++)
      {
        print(game1.prefs!.getString("Level_status$i"));
          l[i]=game1.prefs!.getString("Level_status$i");
      }
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,decoration: BoxDecoration(image:
        DecorationImage(fit: BoxFit.fill,image: AssetImage("myassets/image/background.jpg"))),
          height: double.infinity,

          child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
            Expanded(
                child: Container(margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  height: double.infinity,
                  width: double.infinity,
                  child: Text("MATH PUZZLES",style: TextStyle(fontSize: 20,color: Colors.deepPurple),),
                ),
              ),
            Expanded(flex: 7,
              child: Container(
                margin: EdgeInsets.all(10),
                height: double.infinity,
                width: double.infinity,
                 decoration: BoxDecoration(image:
                 DecorationImage(fit: BoxFit.fill,image: AssetImage("myassets/image/h1.png"))),
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Expanded(
                    child: InkWell(
                      onTapUp: (details) {
                        temp=false;
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return game2();
                        },));
                        setState(() {

                        });
                      },
                      onTapCancel: () {
                        temp=false;
                        setState(() {

                        });
                      },
                      onTapDown: (details) {
                        temp=true;
                        setState(() {

                        });
                      },
                      child: Container(margin: EdgeInsets.only(top: 100),
                        alignment: Alignment.center,
                        height: 80,
                        width: 200,
                        decoration: BoxDecoration(
                          // color: Colors.grey,
                          border: (temp==true)?Border.all(color: Colors.white):null,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Text("CONTINUE",
                        style: TextStyle(fontSize: 20,fontFamily: "four",color: Colors.white),),
                      ),
                    ),
                  ),
                      Expanded(
                        child: InkWell(
                          onTapUp: (details) {
                            temp1=false;
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return hemu(l);
                            },));
                            setState(() {

                            });
                          },
                          onTapCancel: () {
                            temp1=false;
                            setState(() {

                            });
                          },
                          onTapDown: (details) {
                            temp1=true;
                            setState(() {

                            });
                          },
                          child: Container(margin: EdgeInsets.fromLTRB(0, 50, 0, 50),
                            alignment: Alignment.center,
                            height: 30,
                            width: 200,
                            decoration: BoxDecoration(
                              // color: Colors.orange,
                                border: (temp1==true)?Border.all(color: Colors.white):null,
                              borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Text("PUZZLES",
                              style: TextStyle(fontSize: 20,fontFamily: "four",color: Colors.white),),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTapUp: (details) {
                            temp2=false;
                            setState(() {

                            });
                          },
                          onTapCancel: () {
                            temp2=false;
                            setState(() {

                            });
                          },
                          onTapDown: (details) {
                            temp2=true;
                            setState(() {

                            });
                          },
                          onTap: () {
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
                          child: Container(margin: EdgeInsets.only(bottom: 100),
                            alignment: Alignment.center,
                            height: 30,
                            width: 200,
                            decoration: BoxDecoration(
                                // color: Colors.orange,
                                border: (temp2==true)?Border.all(color: Colors.white):null,
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Text("BUY PRO",
                              style: TextStyle(fontSize: 20,fontFamily: "four",color: Colors.white),),
                          ),
                        ),
                      ),
                ]),
              ),
            ),
            Expanded(child: Row(children: [
              Expanded(flex: 3,child: Text("")),
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(20, 5, 5, 5),
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.grey,image: DecorationImage(image:
                  AssetImage("myassets/image/shareus.png")),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(20, 5, 5, 5),
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.grey,
                      image: DecorationImage(image: AssetImage("myassets/image/emailus.png")),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],)),
            Expanded(child: Container(
              height: double.infinity,
              width: double.infinity,
              child: Container(
                height: 60,
                width: 100,
                margin: EdgeInsets.fromLTRB(340, 10, 20, 30),
                alignment: Alignment.center,
                child: Text("Public Policy",style: TextStyle(fontWeight: FontWeight.bold),),
                decoration: BoxDecoration(border: Border.all(width: 1)),
              )
            ))
          ]),
        ),
      ),
    );
  }
}
