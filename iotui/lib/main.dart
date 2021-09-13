import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'hallway.dart';
import 'bedroom1.dart';
import 'bedroom2.dart';
import 'kitchen.dart';
import 'bathroom.dart';
import 'drawing.dart';
import 'door.dart';
import'parking.dart';
void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text('On Your Fingers',
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>Bedroom1()));
                },
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
                    color: Colors.white,
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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
                 borderRadius: BorderRadius.circular(20.0),
                child: Image(image: AssetImage('assets/img2.png'))),
          ),
          SizedBox(height:6.0),
          Divider(height:10.0,color:Colors.grey),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Temperature: 20°C',
              style: TextStyle(
                fontSize: 25.0,
                 color: Colors.black87,
                fontWeight: FontWeight.bold,
              )),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Humidity: 15%',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                )),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('AQI: 72',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(icon: Icon(Icons.settings), onPressed:(){}),
              IconButton(icon: Icon(Icons.help_center), onPressed:(){}),
              IconButton(icon: Icon(Icons.email_outlined), onPressed:(){}),
            ],
          )
        ],

      ),

    );
  }
}



















