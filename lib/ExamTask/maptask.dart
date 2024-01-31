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
  // Map m={'name':'Computer','rate':10000,'qty':10};   single data mate
  //multiple data mate
  List<Map>l = [
    {'check':false,'name': 'Computer', 'rate': 10000, 'qty': 1,'total':0},
    {'check':false,'name': 'Mouse', 'rate': 20000, 'qty': 1,'total':0},
    {'check':false,'name': 'Keyboard', 'rate': 30000, 'qty': 1,'total':0},
    {'check':false,'name': 'Pendrive', 'rate': 40000, 'qty': 1,'total':0},
  ];
  dynamic final_total=0;
  String gender="";
  dynamic total=0;
  int dis=0;
  List<DropdownMenuItem> qty_list = [
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
      appBar: AppBar(centerTitle: true, title: Text("Bill"),),
      body: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Text("select", style: TextStyle(fontSize: 15),),
          Text("item", style: TextStyle(fontSize: 15),),
          Text("rate", style: TextStyle(fontSize: 15),),
          Text("qty", style: TextStyle(fontSize: 15),),
        ],),
        Expanded(child: ListView.builder(
          itemCount: l.length, itemBuilder: (context, index) {
          return ListTile(
            title: Wrap(alignment: WrapAlignment.spaceEvenly, children: [
              Checkbox(
                value: l[index]['check'],
                onChanged: (value) {
                final_total=0;
                l[index]['check']=value;

                if(l[index]['check']==true)
                {
                    l[index]['total']=l[index]['rate']*l[index]['qty'];
                }
                setState(() {

                });
              },),
              Text("${l[index]['name']}"),
              Text("${l[index]['rate']}"),
              DropdownButton(
                value: l[index]['qty'],
                items: qty_list, onChanged: (value) {
                  final_total=0;
                  l[index]['qty']=value;
                  l[index]['total']=l[index]['rate']*l[index]['qty'];
                  setState(() {

                  });
              },)
            ]),);
        },)),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio(value: "Male", groupValue: gender, onChanged: (value) {
              gender=value!;
              dis=final_total*5~/100;
              setState(() {
              });
            },),
            Text("Male"),
            Radio(value: "Female", groupValue: gender, onChanged: (value) {
              gender=value!;
              dis=final_total*10~/100;
              setState(() {
              });
            },),
            Text("Female"),
          ],
        ),
        Divider(thickness: 5,color: Colors.pink,),
        Container(
          alignment: Alignment.center,child: Text("purchase List"),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("item",style: TextStyle(fontSize: 15),),
            Text("rate",style: TextStyle(fontSize: 15),),
            Text("Oty",style: TextStyle(fontSize: 15),),
            Text("Amount",style: TextStyle(fontSize: 15),),
          ],
        ),
        Expanded(
            child: ListView(
              children: l.where((element) => element['check']==true).map((l){
                final_total+=l['total'];
                return ListTile(
                  title: Wrap(alignment: WrapAlignment.spaceEvenly,children: [
                    Text("${l['name']}",),
                    Text("${l['rate']}"),
                    Text("${l['qty']}"),
                    Text("${l['total']}"),
                  ]),
                );
              }).toList(),
            )),
        Text("Total=${final_total}",style: TextStyle(fontSize: 20),),
        // Text("Dis=${dis}",style: TextStyle(fontSize: 20),),
        SizedBox(height: 0,),
      ]),
    );
  }
}

