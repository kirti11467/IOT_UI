import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'bedroom1.dart';
import 'hallway.dart';
import 'bedroom2.dart';
import 'bathroom.dart';
import 'drawing.dart';
import 'kitchen.dart';
import 'parking.dart';
import 'control.dart';
class Door extends StatefulWidget {
  @override
  _DoorState createState() => _DoorState();
}

class _DoorState extends State<Door> {
  bool isSwitched=true;
  Widget dev(text){
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        margin: EdgeInsets.all(10.0),
        color: Colors.grey[500],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              children:<Widget>[
                Text(
                    text,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                    )
                ),

                Row(
                  children: <Widget>[
                    Text("bluetooth",
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            letterSpacing: 2.0
                        )
                    ),
                    SizedBox(width:10.0),
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
                ElevatedButton.icon(onPressed:(){}, icon: Icon(Icons.power_settings_new), label: Text("on/off"), style: ElevatedButton.styleFrom(primary: Colors.grey[800]), ),
                ElevatedButton.icon(onPressed:(){Navigator.push(context, MaterialPageRoute(builder:(context)=>Control()));}, icon: Icon(Icons.settings_applications_outlined), label: Text("Controls"), style: ElevatedButton.styleFrom(primary: Colors.grey[800]), ),
              ]
          ),
        )
    );
  }

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
        actions:<Widget>[
          IconButton(
            icon: Icon(Icons.close),
            onPressed:()=>exit(0),
          ),
        ],

      ),
      body: Column(
        children: [
          TextButton(
            onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>(Home())));},
            child: Text('Home',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>Bedroom1()));},
                child: Text('bedroom 1',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    )),
              ),
              TextButton(
                onPressed: (){ Navigator.push(context, MaterialPageRoute(builder:(context)=>Bedroom2()));},
                child: Text('bedroom 2',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),),
              ),
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>Hallway()));
                },
                child: Text('hallway',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,

                  ),),
              ),
              TextButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>Kitchen()));},
                child: Text('kitchen',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),),
              ),
            ],

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>Bathroom()));},
                child: Text('bathroom',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    )),
              ),
              TextButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>Drawing()));},
                child: Text('drawing',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),),
              ),
              TextButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>Door()));},
                child: Text('main-door',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white54,
                  ),),
              ),
              TextButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>Parking()));},
                child: Text('parking',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),),
              ),
            ],

          ),
          Row(
            children: <Widget>[
              dev("light 1"),
              dev("light 2"),
            ],
          ),
          Row(
            children: <Widget>[
              dev("device1"),
            ],
          ),

        ],

      ),

    );
  }
}




