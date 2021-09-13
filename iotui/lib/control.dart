import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Control extends StatefulWidget {
  @override
  _ControlState createState() => _ControlState();
}

class _ControlState extends State<Control> {
  bool isSwitched=false;
  int _value=1;
  int _svalue=1;
  int temp=13;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
        title: Text('on your fingers',
        style: TextStyle(
        fontSize: 25.0,
        letterSpacing: 2.0,
    )
    ),
    backgroundColor: Colors.black54,
    centerTitle: true,
        ),
        body:Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget> [
            Row(
              children: <Widget>[
                Text("power",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        letterSpacing: 2.0
                    )
                ),
                SizedBox(width:15.0),

                Switch(
                  value: isSwitched,
                  onChanged: (value){
                    setState((){
                      isSwitched=value;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text("Light Color:    ",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        letterSpacing: 2.0
                    )
                ),
                DropdownButton(
                  dropdownColor: Colors.black87,
                   iconEnabledColor: Colors.white,
                   value:_value,
                    items: [DropdownMenuItem(child: Text("white", style: TextStyle(fontSize: 20.0,color: Colors.white)),value: 1,),
                      DropdownMenuItem(child: Text("blue", style: TextStyle(fontSize: 20.0,color: Colors.white)),value: 2,),
                      DropdownMenuItem(child: Text("yellow", style: TextStyle(fontSize: 20.0,color: Colors.white)),value: 3,),
                      DropdownMenuItem(child: Text("red", style: TextStyle(fontSize: 20.0,color: Colors.white)),value: 4,),
                      DropdownMenuItem(child: Text("green", style: TextStyle(fontSize: 20.0,color: Colors.white)),value: 5,),
                    ],
                    onChanged: (value){
                     setState(() {
                       _value=value;
                     });
                    },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text("Fan Speed:    ",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        letterSpacing: 2.0
                    )
                ),
                DropdownButton(
                  dropdownColor: Colors.black87,
                  iconEnabledColor: Colors.white,
                  value:_svalue,
                  items: [DropdownMenuItem(child: Text("1", style: TextStyle(fontSize: 20.0,color: Colors.white)),value: 1,),
                    DropdownMenuItem(child: Text("2", style: TextStyle(fontSize: 20.0,color: Colors.white)),value: 2,),
                    DropdownMenuItem(child: Text("3", style: TextStyle(fontSize: 20.0,color: Colors.white)),value: 3,),
                    DropdownMenuItem(child: Text("4", style: TextStyle(fontSize: 20.0,color: Colors.white)),value: 4,),
                    DropdownMenuItem(child: Text("5", style: TextStyle(fontSize: 20.0,color: Colors.white)),value: 5,),
                  ],
                  onChanged: (value){
                    setState(() {
                      _svalue=value;
                    });
                  },
                ),
              ],
            ),
            Row(
              children:<Widget> [
                Text("AC Temperature:    ",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        letterSpacing: 2.0
                    )
                ),
                Text("$temp °C",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      letterSpacing: 2.0
                  ),
                ),
                IconButton(
                    icon:Icon(Icons.arrow_upward),
                    color: Colors.white,
                    onPressed:(){
                      setState(() {
                        temp+=1;
                      });
                    }
                ),
                IconButton(
                    icon:Icon(Icons.arrow_downward),
                    color:Colors.white,
                    onPressed:(){
                      setState(() {
                        temp-=1;
                      });
                    }
                ),
              ]

            )

          ],
    ),
        )
    );
  }
}
