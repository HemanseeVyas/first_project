import 'package:flutter/material.dart';
import 'package:p1/math_app/data.dart';
import 'package:p1/math_app/h1.dart';
import 'package:p1/math_app/win.dart';

class game2 extends StatefulWidget {
 int ?ind;
 game2([this.ind]);

  @override
  State<game2> createState() => _game2State();
}

class _game2State extends State<game2> {
  String str="";
  int level_no=0;
  List l=[];
  bool temp3=false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.ind!=null)
    {
      level_no=widget.ind!;
    }else
    {
      level_no=game1.prefs!.getInt("level_no") ?? 0;
    }
    setState(() {

        });
    // get_pref();
  }
  // get_pref()
  // {
  //   level_no=game1.prefs!.getInt("level_no") ?? 0;
  //   setState(() {
  //
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //willpopscope game exist krvi se k nahi te option batave
      body: WillPopScope(child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("myassets/image/gameplaybackground.jpg"))),
          child: Column(children: [
            Expanded(child: Row(children: [
              Expanded(
                child: InkWell(onTap: () {
                  String str=game1.prefs!.getString("skiptime")??"";
                  print("skip_time:$str");
                  if(str=="")
                    {
                      DateTime dt=DateTime.now();
                      game1.prefs!.setString("skiptime", dt.toString());
                      game1.prefs!.setString("Level_status$level_no", "no");
                      level_no++;
                      game1.prefs!.setInt("level_no", level_no);
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return game2();
                      },));
                    }
                    else
                    {
                              DateTime cur_time=DateTime.now();
                              DateTime skiptime=DateTime.parse(str);
                              Duration dur=cur_time.difference(skiptime);
                              int sec=dur.inSeconds;
                              if(sec>=10)
                               {
                                 game1.prefs!.setString("Level_status$level_no", "no");
                                 level_no++;
                                 game1.prefs!.setInt("level_no", level_no);
                                 game1.prefs!.setString("skiptime", cur_time.toString());
                                 Navigator.push(context, MaterialPageRoute(builder: (context) {
                                   return game2();
                                 },));
                               }
                               else
                               {
                                      showDialog(context: context, builder: (context) {
                                        return AlertDialog(title: Text("You can skip after 10 sec"),
                                          actions: [
                                            TextButton(onPressed: () {
                                              Navigator.pop(context);
                                            }, child: Text("OK")),
                                          ],
                                        );
                                      },);
                               }
                    }
                },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("myassets/image/skip.png"))),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Text("Puzzles ${level_no+1}",
                    style: TextStyle(fontSize: 30),),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      image: DecorationImage(fit: BoxFit.fill,
                          image: AssetImage("myassets/image/level_board.png"))),
                ),
              ),
              Expanded(
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("myassets/image/hint.png"))),
                ),
              )
            ],)),
            Expanded(flex: 7,
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("${config.puzzle_no[level_no]}"))),
                )),
            Expanded(child: Text("")),
            Expanded(child: Text("")),
            Expanded(flex: 2,
                child: Container(
                  height: 20,
                  width: double.infinity,
                  color: Colors.black,
                  child: Column(children: [
                    Expanded(flex: 2,
                      child: Row(
                        children: [
                          Expanded(flex: 6,
                            child: InkWell(onTap: () {
                              str=str+"1";
                              setState(() {

                              });
                            },
                              child: Container(margin: EdgeInsets.only(bottom: 20),
                                height: 40,
                                width: 160,
                                alignment: Alignment.bottomLeft,
                                child: Text("$str"),
                                decoration: BoxDecoration(
                                  color: Colors.white,borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                          ),
                          Expanded(child: InkWell(onTap: () {
                            str=str.substring(0,str.length-1);
                            setState(() {

                            });
                          },
                            child: Container(
                              margin: EdgeInsets.only(bottom: 20),
                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    // fit: BoxFit.fill,
                                      image: AssetImage("myassets/image/delete.png"))),
                            ),
                          )),
                          Expanded(
                              child: InkWell(onTap: () {
                                if(int.parse(str)==config.ans[level_no])
                                {
                                  game1.prefs!.setString("Level_status$level_no","yes");
                                  if(widget.ind!=null)
                                    {
                                      level_no++;
                                      game1.prefs!.setInt("level_no",level_no);
                                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                                        return winner(widget.ind!,true);
                                      },));
                                    }else
                                      {
                                        level_no++;
                                        game1.prefs!.setInt("level_no",level_no);
                                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                                          return winner(level_no);
                                        },));
                                      }

                                  setState(() {
                                  });
                                }else
                                {
                                  // Fluttertoast.showToast(
                                  //     msg: "This is Center Short Toast",
                                  //     toastLength: Toast.LENGTH_SHORT,
                                  //     gravity: ToastGravity.CENTER,
                                  //     timeInSecForIosWeb: 1,
                                  //     backgroundColor: Colors.red,
                                  //     textColor: Colors.white,
                                  //     fontSize: 16.0
                                  // );
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                      content: Text("wrong ans")
                                  ));
                                }
                                str="";
                                setState(() {

                                });
                              },
                                child: Container(
                                  height: 40,
                                  width: 60,
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text("SUBMIT",style: TextStyle(color: Colors.white,fontSize: 15),),
                                ),
                              )),
                        ],),
                    ),
                    Expanded(
                      child: Row(children: [
                        Expanded(
                            child: InkWell(onTap: () {
                              str=str+"1";
                              setState(() {

                              });
                            },
                              child: Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(color: Colors.white12,border: Border.all(
                                    color: Colors.white),borderRadius: BorderRadius.all(Radius.circular(5))
                                ),
                                child: Text("1",style: TextStyle(fontSize: 10,color: Colors.white),),
                              ),
                            )),
                        SizedBox(width: 5,),
                        Expanded(child: InkWell(onTap: () {
                          str=str+"2";
                          setState(() {

                          });
                        },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 50,
                            child: Text("2",style: TextStyle(fontSize: 10,color: Colors.white),),
                            decoration: BoxDecoration(color: Colors.white12,border:
                            Border.all(color: Colors.white),borderRadius: BorderRadius.all(Radius.circular(5))),
                          ),
                        )),
                        SizedBox(width: 5,),
                        Expanded(child: InkWell(onTap: () {
                          str=str+"3";
                          setState(() {

                          });
                        },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 50,
                            child: Text("3",style: TextStyle(fontSize: 10,color: Colors.white),),
                            decoration: BoxDecoration(color: Colors.white12,border:
                            Border.all(color: Colors.white),borderRadius: BorderRadius.all(Radius.circular(5))),
                          ),
                        )),
                        SizedBox(width: 5,),
                        Expanded(child: InkWell(onTap: () {
                          str=str+"4";
                          setState(() {

                          });
                        },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 50,
                            child: Text("4",style: TextStyle(fontSize: 10,color: Colors.white),),
                            decoration: BoxDecoration(color: Colors.white12,border:
                            Border.all(color: Colors.white),borderRadius: BorderRadius.all(Radius.circular(5))),
                          ),
                        )),
                        SizedBox(width: 5,),
                        Expanded(child: InkWell(onTap: () {
                          str=str+"5";
                          setState(() {

                          });
                        },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 50,
                            child: Text("5",style: TextStyle(fontSize: 10,color: Colors.white),),
                            decoration: BoxDecoration(color: Colors.white12,border:
                            Border.all(color: Colors.white),borderRadius: BorderRadius.all(Radius.circular(5))),
                          ),
                        )),
                        SizedBox(width: 5,),
                        Expanded(child: InkWell(onTap: () {
                          str=str+"6";
                          setState(() {

                          });
                        },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 50,
                            child: Text("6",style: TextStyle(fontSize: 10,color: Colors.white),),
                            decoration: BoxDecoration(color: Colors.white12,border:
                            Border.all(color: Colors.white),borderRadius: BorderRadius.all(Radius.circular(5))),
                          ),
                        )),
                        SizedBox(width: 5,),
                        Expanded(child: InkWell(onTap: () {
                          str=str+"7";
                          setState(() {

                          });
                        },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 50,
                            child: Text("7",style: TextStyle(fontSize: 10,color: Colors.white),),
                            decoration: BoxDecoration(color: Colors.white12,border:
                            Border.all(color: Colors.white),borderRadius: BorderRadius.all(Radius.circular(5))),
                          ),
                        )),
                        SizedBox(width: 5,),
                        Expanded(child: InkWell(onTap: () {
                          str=str+"8";
                          setState(() {

                          });
                        },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 50,
                            child: Text("8",style: TextStyle(fontSize: 10,color: Colors.white),),
                            decoration: BoxDecoration(color: Colors.white12,border:
                            Border.all(color: Colors.white),borderRadius: BorderRadius.all(Radius.circular(5))),
                          ),
                        )),
                        SizedBox(width: 5,),
                        Expanded(child: InkWell(onTap: () {
                          str=str+"9";
                          setState(() {

                          });
                        },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 50,
                            child: Text("9",style: TextStyle(fontSize: 10,color: Colors.white),),
                            decoration: BoxDecoration(color: Colors.white12,border:
                            Border.all(color: Colors.white),borderRadius: BorderRadius.all(Radius.circular(5))),
                          ),
                        )),
                        SizedBox(width: 5,),
                        Expanded(child: InkWell(onTap: () {
                          str=str+"0";
                          setState(() {

                          });
                        },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 50,
                            child: Text("0",style: TextStyle(fontSize: 10,color: Colors.white),),
                            decoration: BoxDecoration(color: Colors.white12,border:
                            Border.all(color: Colors.white),borderRadius: BorderRadius.all(Radius.circular(5))),
                          ),
                        )),
                      ],
                      ),
                    )
                  ]),
                )),
          ]),
        ),
      ),

        onWillPop: () async{
          showDialog(context: context, builder: (context) {
            return AlertDialog(title: Text("Are you sure for exits...."),actions: [
              IconButton(onPressed: () {

              }, icon: Text("Yes")),
              IconButton(onPressed: () {

              }, icon: Text("No")),
            ],);
          },);
          return true;
        },
      ),
    );
  }
}
