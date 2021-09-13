import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DevCard extends StatelessWidget {
  final String text;
  bool isSwitched=false;
  DevCard(String s, {this.text});
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(10.0),
        color: Colors.grey[500],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              children:<Widget>[
                Text(
                    '$text',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                    )
                ),
                SizedBox(height:5.0),
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
                        
                      },
                    ),
                  ],
                ),
                ElevatedButton.icon(onPressed:(){}, icon: Icon(Icons.power_settings_new), label: Text("on/off"), style: ElevatedButton.styleFrom(primary: Colors.grey[800]), ),
              ]
          ),
        )
      
    );
  }
}
