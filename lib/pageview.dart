import 'package:flutter/material.dart';
import 'package:p1/my%20data.dart';

class THird extends StatefulWidget {
  List a;
  int index;

  THird(this.index, this.a);

  @override
  State<THird> createState() => _THirdState();
}

class _THirdState extends State<THird> {
  List col = [Colors.blue, Colors.deepPurple, Colors.purple, Colors.teal,Colors.pink];
  List ar=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ar=data_class.img;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${data_class.arr[widget.index]}")),
      // body: PageView.builder(
      //   itemCount: widget.a.length,
      //   controller: PageController(initialPage: widget.index),
      //   itemBuilder: (context, index) {
      //     return Container(color: col[index],
      //       alignment: Alignment.center,
      //       child: Text("${widget.a[index]}"),
      //     );
      //   },
      // ),

      body: GridView.builder(itemCount: data_class.img.length,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 5,
      ), itemBuilder: (context, index) {
        return InkWell(onTap:
          () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Fourth(ar, index);
            },));
          },
          child: Container(
            child: Container(decoration: BoxDecoration(
                image: DecorationImage(fit: BoxFit.fill,image: AssetImage("${data_class.img[index]}")))),
          ),
        );

      },),
    );
  }
}
class Fourth extends StatefulWidget {
  List list;
  int index;
  Fourth(this.list,this.index);

  @override
  State<Fourth> createState() => _FourthState();
}

class _FourthState extends State<Fourth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(
      title: Text("fourth"),

    ),
      body: PageView.builder(itemCount: widget.list.length,
        controller: PageController(initialPage: widget.index),
        itemBuilder: (context, index) {
        return Container(decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("${widget.list[index]}"),)
        ),
        );
      },),
    );
  }
}

