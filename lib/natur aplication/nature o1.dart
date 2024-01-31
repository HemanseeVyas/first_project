import 'dart:core';
import 'dart:core';
import 'dart:core';
import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:p1/my%20data.dart';
// import 'package:p1/natue%20aplication/nature%202.dart';
import 'package:p1/natur%20aplication/nature%202.dart';

class third extends StatefulWidget {
  int index;

  third(this.index);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  List im = [];
  List b = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    switch (widget.index) {
      case 0:
        {
          im = data.SuccessImage;

          break;
        }
      case 1:
        {
          im = data.NatureImage;

          break;
        }
      case 2:
        {
          im = data.BeachImage;

          break;
        }
      case 3:
        {
          im = data.BridgeImage;

          break;
        }
      case 4:
        {
          im = data.ChocolateImage;

          break;
        }
    }
  }

  // get index => null;
  @override
  Widget build(BuildContext context) {
    var data;
    return Scaffold(
      appBar: AppBar(
        title: Text("${data.arr[widget.index]}"),
      ),
      body: GridView.builder(
        itemCount: im.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 5,
        ),
        itemBuilder: (context, index) {
          print(index);
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return fourth(im, index);
                },
              ));
            },
            child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage("${im[index]}")))),
          );
        },
      ),
    );
  }
}

class fourth extends StatefulWidget {
  List list;
  int index;

  fourth(this.list, this.index);

  @override
  State<fourth> createState() => _fourthState();
}

class _fourthState extends State<fourth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.index}"),
      ),
      body: PageView.builder(
        itemCount: widget.list.length,
        controller: PageController(initialPage: widget.index),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("${widget.list[index]}")),
            ),
          );
        },
      ),
    );
  }
}
