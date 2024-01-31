import 'dart:js_interop';

import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    home: second(),
    debugShowCheckedModeBanner: false,
  ));
}
class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  String gender="";
  dynamic total=0;
  int dis=0;
  List rate1=[];
  List qty1 = [];
  List amt=[];
  List l1=[];

  List isCheck = [false, false, false, false];
  // Map m = {'name':'computer','rate':1000,'qty':10};
  List<Map> l = [
    {'name':'Computer','rate':2000,'qty':0},
    {'name':'Mouse','rate':500,'qty':0},
    {'name':'Keyboard','rate':900,'qty':0},
    {'name':'Pendrive','rate':300,'qty':0},
  ];

  List<DropdownMenuItem> qty_list = [
    DropdownMenuItem(child: Text("Qty"), value: 0,),
    DropdownMenuItem(child: Text("1"),value: 1,),
    DropdownMenuItem(child: Text("2"), value: 2,),
    DropdownMenuItem(child: Text("3"), value: 3,),
    DropdownMenuItem(child: Text("4"), value: 4,),
    DropdownMenuItem(child: Text("5"), value: 5,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bill"),
        centerTitle: true,
      ),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Select", style: TextStyle(fontSize: 15,),),
            Text("item", style: TextStyle(fontSize: 15,),),
            Text("rate", style: TextStyle(fontSize: 15,),),
            Text("Oty", style: TextStyle(fontSize: 15,),),
          ],
        ),
        Expanded(
            child: ListView.builder(
              itemCount: l.length,
              itemBuilder: (context, index) {
                return ListTile(
                    title: Wrap(
                      alignment: WrapAlignment.spaceEvenly,
                      children: [
                        Checkbox(
                          value: isCheck[index],
                          onChanged: (value) {
                            isCheck[index] = value;
                            // print("hello");
                            if(isCheck[index]==true)
                            {
                              l1.add(l[index]['name']);
                              rate1.add(l[index]['rate']);
                              qty1.add(l[index]['qty']);
                              for(int i=0;i<rate1.length;i++)
                              {
                                if(rate1[i]==l[index]['rate'])
                                {
                                  amt.add(rate1[i]*qty1[i]);
                                  total=total+amt[i];
                                }
                              }

                            }else  if(isCheck[index]==false)
                            {
                              dynamic tot;
                              total=0;
                              for(int i=0;i<rate1.length;i++)
                              {
                                if(rate1[i]==l[index]['rate'])
                                {
                                  amt.removeAt(i);
                                  qty1.removeAt(i);
                                  // tot=rate1[i]*qty1[i];
                                  // total=total-tot;
                                }
                              }
                              l1.remove(l[index]['name']);
                              rate1.remove(l[index]['rate']);
                              // qty1.remove(qty[index]);
                              for(int i=0;i<rate1.length;i++)
                              {
                                total=total+amt[i];
                              }
                            }
                            setState(() {});
                          },
                        ),
                        Text("${l[index]['name']}", style: TextStyle(fontSize: 15),),
                        Text("${l[index]['rate']}", style: TextStyle(fontSize: 15),),
                        DropdownButton(
                          value: l[index]['qty'],
                          items: qty_list,
                          onChanged: (value) {
                            total=0;
                            l[index]['qty']=value;
                            // qty1[index]=value;
                            for(int i=0;i<l1.length;i++)
                            {
                              if(l1[i]==l[index]['name'])
                              {
                                qty1[i]=value;
                              }
                            }

                            for(int i=0;i<rate1.length;i++) {
                              amt[i] = rate1[i] * qty1[i];
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
        Row(mainAxisAlignment: MainAxisAlignment.center,children: [
          Radio(value: "male", groupValue: gender, onChanged: (value) {
            gender=value!;
            dis=total*5~/100;
            setState(() { });
          },),
          Text("MALE"),
          Radio(value: "female", groupValue: gender, onChanged: (value) {
            gender=value!;
            dis=(total*10~/100);
            setState(() { });
          },),
          Text("FEMALE"),
        ],),
        Divider(thickness: 5,color: Colors.pink,),
        Container(alignment: Alignment.center,child: Text("purchase List",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("item", style: TextStyle(fontSize: 15,),),
            Text("rate", style: TextStyle(fontSize: 15,),),
            Text("Qty", style: TextStyle(fontSize: 15,),),
            Text("Amount", style: TextStyle(fontSize: 15,),),
          ],
        ),
        Expanded(
            child: ListView.builder(
              itemCount: l1.length,
              itemBuilder: (context, index) {
                return ListTile(
                    title: Wrap(alignment: WrapAlignment.spaceEvenly,children: [
                      // Text("${l[index]['name']}"),
                      // Text("${l[index]['rate']}"),
                      // Text("${l[index]['qty']}"),
                      // Text("${amt[index]}"),
                      Text("${l1[index]}"),
                      Text("${rate1[index]}"),
                      Text("${qty1[index]}"),
                      Text("${amt[index]}"),
                    ],)
                );
              },)
        ),
        Text("Total : ${total}",style: TextStyle(fontSize: 20),),
        // Text("Dis : ${dis}",style: TextStyle(fontSize: 25),),
        // Text("Pay : ${total-dis}",style: TextStyle(fontSize: 25),),
        SizedBox(height: 30,),
      ]),
    );
  }
}