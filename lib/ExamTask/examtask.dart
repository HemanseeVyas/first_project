import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//sir a change akrine alg kryu a expanded1 show in
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: first(),
  ));
}

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  List item = ["Computer", "mouse", "keybord", "pendrive"];
  List isCheck = [false, false, false, false];
  List l=[];
  List rate = [10000, 250, 300, 500];
  List rate1=[];
  List qty = [1,1, 1, 1];
  List qty1 = [];
  List amt=[];
  dynamic total=0;
  List<DropdownMenuItem> qty_list = [
    DropdownMenuItem(
      child: Text("Qty"),
      value: 0,
    ),
    DropdownMenuItem(
      child: Text("1"),
      value: 1,
    ),
    DropdownMenuItem(
      child: Text("2"),
      value: 2,
    ),
    DropdownMenuItem(
      child: Text("3"),
      value: 3,
    ),
    DropdownMenuItem(
      child: Text("4"),
      value: 4,
    ),
    DropdownMenuItem(
      child: Text("5"),
      value: 5,
    ),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Task")),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Select",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "item",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "rate",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "Oty",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
          Expanded(
              child: ListView.builder(
                itemCount: item.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      title: Wrap(
                        alignment: WrapAlignment.spaceEvenly,
                        children: [
                          Checkbox(
                            value: isCheck[index],
                            onChanged: (value) {
                              // total=0;
                              isCheck[index] = value;
                              if(isCheck[index]==true)
                              {
                                l.add(item[index]);
                                rate1.add(rate[index]);
                                qty1.add(qty[index]);
                                for(int i=0;i<rate1.length;i++)
                                {
                                  if(rate1[i]==rate[index])
                                  {
                                    // amt[i]=rate1[i]*qty[i];
                                    amt.add(rate1[i]*qty[i]);
                                    total=total+amt[i];
                                  }
                                }

                              }else  if(isCheck[index]==false)
                              {
                                dynamic tot;
                                for(int i=0;i<rate1.length;i++)
                                {
                                  if(rate1[i]==rate[index])
                                  {
                                    amt.removeAt(i);
                                    tot=rate1[i]*qty[i];
                                    total-=tot;
                                  }
                                }
                                l.remove(item[index]);
                                rate1.remove(rate[index]);
                                qty1.remove(qty[index]);
                              }
                              setState(() {});
                            },
                          ),
                          Text(
                            "${item[index]}",
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            "${rate[index]}",
                            style: TextStyle(fontSize: 15),
                          ),
                          DropdownButton(value: qty[index],
                            items: qty_list,
                            onChanged: (value) {
                              total=0;
                              qty[index]=value;
                              // qty1[index]=value;
                              for(int i=0;i<l.length;i++)
                              {
                                if(l[i]==item[index])
                                {
                                  qty1[i]=value;
                                }
                              }
                              for(int i=0;i<rate1.length;i++) {
                                if(rate1[i]==rate[index]) {
                                  amt[i]=rate1[i]*qty1[i];

                                }
                              }
                              for(int i=0;i<rate1.length;i++) {

                                total=total+amt[i];

                              }
                              setState(() {

                              });
                            },
                          )
                        ],
                      ));
                },
              )),
          Divider(thickness: 5,color: Colors.pink,),
          Container(alignment: Alignment.center,child: Text("purchase List"),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "item",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "rate",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "Oty",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "Amount",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
          Expanded(child: ListView.builder(itemCount: l.length,itemBuilder: (context, index) {
            return ListTile(
                title: Wrap(alignment: WrapAlignment.spaceEvenly,children: [
                  Text("${l[index]}"),
                  Text("${rate1[index]}"),
                  Text("${qty1[index]}"),
                  Text("${amt[index]}"),

                ],)
            );
          },)),
          Text("Total : $total",style: TextStyle(fontSize: 25),),
          SizedBox(height: 30,),

        ],

      ),

    );
  }
}
//qty[index]=value;
//for(int i=0; i<rate1.length; i++)
//if(l[i]==item[index])
// {
// qty1[i]=value;
// }
//}
//for(int i=0;i<rate1.length; i++)
//{
//amt[i]=rate1[i]*qty1[i];
//total=total+amt[i];
// }
//setstate