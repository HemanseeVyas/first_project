import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: first(),));
}
class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  int a=1;
  // bool start=false;
  // bool stop=false;
  // bool reset=false;
  // List l=["start","stop"];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get();
  }
  Stream get()
  async* {
    while(true)
    {
      if(a>10) a=0;
      int t=a;
      await Future.delayed(Duration(seconds: b?1:t++));
      if(b) a++;
      yield a;
    }
  }
  bool b=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("Multiple Data"),),

      body: Column(
        children: [
          StreamBuilder(stream: get(), builder: (context, snapshot) {
            // print(snapshot.connectionState);
            // print(snapshot.data);
            // if((snapshot.connectionState==ConnectionState.active)||(snapshot.connectionState==ConnectionState.done))
            // {
              int x=snapshot.data;
              return
                // Container(alignment: Alignment.topCenter,
                // margin: EdgeInsets.all(10),
                // child:
                Text("0 : 0 : $x",style: TextStyle(fontSize: 30),);
              // );
            // }else
            // {
            //   return Container(alignment: Alignment.topCenter,
            //     child: CircularProgressIndicator(),
            //   );
            // }
          },
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              b=b?false:true;
              setState(() {
              });
              return print('start/stop');
            }, child: b?Text('start'):Text('stop')),
            ElevatedButton(onPressed: () {
              b=false;
              a=0;
              return print('reset');
            }, child: Text('reset')),
          ],
          ),
        ],
      ),
    );
  }
}


// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: stop_watch(),
//   ));
// }
//
// class stop_watch extends StatefulWidget {
//   const stop_watch({super.key});
//
//   @override
//   State<stop_watch> createState() => _stop_watchState();
// }
//
// class _stop_watchState extends State<stop_watch> {
//   int a = 0;
//   int x = 0;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     get();
//   }
//
//   Stream get() async* {
//     for (int i = 0; i <= 60; i++) {
//       a = i;
//       await Future.delayed(Duration(seconds: 1));
//       yield a;
//     }
//   }
//
//   List l = ["Start", "Stop"];
//   bool stop = false;
//   bool start = false;
//   Stopwatch stopwatch = new Stopwatch();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Stop Watch")),
//       body: Column(children: [
//         StreamBuilder(
//           initialData: 0,
//           stream: get(),
//           builder: (context, snapshot) {
//             if (stop == true) {
//               if ( snapshot.connectionState==ConnectionState.done ||snapshot.connectionState==ConnectionState.active)
//               { }
//               int x = snapshot.data;
//               return Center(
//                 child: Text("0:0:$x", style: TextStyle(fontSize: 30)),);
//
//             } else {
//               return Center(
//                 child: Text("0:0:0", style: TextStyle(fontSize: 30)),);
//             }
//           },),
//         Row(
//           children: [
//             InkWell(
//               onTap: () {
//                 stop=true;
//                 if(stop== true)
//                 {
//                   l[0]=l[1];
//                   stopwatch.start();
//                 }
//                 start=true;
//                 if(start=true)
//                 {
//                   l[1]=l[0];
//                   stopwatch.stop();
//                 }
//                 setState(() {
//
//                 });
//               },
//               child: Container(
//                 alignment: Alignment.center,
//                 height: 50,
//                 width: 100,
//                 color: Colors.blue,
//                 margin: EdgeInsets.all(10),
//                 child: Text("${l[0]}", style: TextStyle(fontSize: 20)),
//               ),
//             ),
//             InkWell(
//               onTap: () {
//                 // a=0;
//                 stopwatch.stop();
//                 stopwatch.reset();
//
//                 setState(() {
//
//                 });
//               },
//               child: Container(alignment: Alignment.center,
//                   height: 50,
//                   width: 100,
//                   color: Colors.blue,
//                   margin: EdgeInsets.all(10),
//                   child: Text("Reaset", style: TextStyle(fontSize: 20))),
//             )
//           ],
//         )
//       ]),
//     );
//   }
// }
