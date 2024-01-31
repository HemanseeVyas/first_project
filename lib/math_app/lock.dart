import 'package:flutter/material.dart';
import 'package:p1/math_app/data.dart';
import 'package:p1/math_app/h2.dart';

import 'h1.dart';

class hemu extends StatefulWidget {
  List l;
  hemu(this.l);

  @override
  State<hemu> createState() => _hemuState();
}

class _hemuState extends State<hemu> {
  int level_no=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.l);
    level_no=game1.prefs!.getInt("level_no") ?? 0;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(image:
        DecorationImage(fit: BoxFit.fill,image: AssetImage("myassets/image/background.jpg"))),
        child: Column(children: [
          Expanded(child: Text("Select Puzzle",
            style: TextStyle(color: Colors.deepPurple,fontSize: 30,fontWeight: FontWeight.bold,fontFamily: "four"),),
          ),
          Expanded(flex: 12,
              child: GridView.builder(itemCount: config.puzzle_no.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 3,
                mainAxisSpacing: 3,
              ), itemBuilder: (context, index) {
                return InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return game2();
                  },));
                },
                  child: InkWell(
                    onTap:() {
                     Navigator.push(context, MaterialPageRoute(builder: (context) {
                       return game2(index);
                     },));
                    } ,
                    child: Container(
                      height: 60,
                      width: 60,
                      margin: EdgeInsets.all(5),
                      child: (index < level_no) ? Text("${index+1}",style: TextStyle(fontFamily: "four",fontSize: 40),)
                      :null,
                      decoration: BoxDecoration(image: (index < level_no) ? (widget.l[index]=="yes") ? DecorationImage(image:
                      AssetImage("myassets/image/tick.png")):null
                          : DecorationImage(image: AssetImage("myassets/image/lock.png")),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1),
                      ),
                    ),
                  ),
                );
              },)),
          // Expanded(flex: 2,
          //       child: Container(
          //         height: double.infinity,
          //         width: double.infinity,
          //         // color: Colors.cyanAccent,
          //         margin: EdgeInsets.fromLTRB(400, 5, 5, 5),
          //         decoration: BoxDecoration(
          //             // color: Colors.grey,
          //             image: DecorationImage(image: AssetImage("myassets/image/next.png")),
          //             borderRadius: BorderRadius.circular(10)),
          //       ),
          // )
        ]),
      ),
      ),
    );
  }
}
