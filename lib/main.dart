import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home : Ninja(),
  ));
}

class Ninja extends StatefulWidget {
  @override
  _NinjaState createState() => _NinjaState();
}

class _NinjaState extends State<Ninja> {
  int count=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title : Text("Flutter Id Card"),
        centerTitle : true,
        backgroundColor: Colors.red[600],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            count++;
          });
        },
        child : Icon(Icons.add),
        backgroundColor: Colors.grey,
      ),
      body : Padding(
          padding : EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child : Column(
              crossAxisAlignment: CrossAxisAlignment.start ,
              children:<Widget>[
                Center(
                  child : CircleAvatar(
                    backgroundImage: AssetImage("assets/me.jpeg"),
                    radius: 50.0,
                  ),
                ),
                //SizedBox(height : 20.0),
                Divider(
                  height : 60.0,
                  color : Colors.grey,
                ),
                Text(
                  "NAME",
                  style : TextStyle(
                    color : Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  "KISHORE M",
                  style : TextStyle(
                    color : Colors.amber,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height :40.0),
                Text(
                  "FLUTTER LEVEL",
                  style : TextStyle(
                    color : Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  "$count",
                  style : TextStyle(
                    color : Colors.amber,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height :40.0),
                Row(
                    children:<Widget>[
                      Icon(
                        Icons.mail,
                        color : Colors.grey,
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        "kishore7wado@gmail.com",
                        style: TextStyle(
                          color : Colors.amber,
                          letterSpacing: 2.0,
                          fontSize: 20.0,
                        ),
                      ),
                    ]
                ),
              ]
          )
      ),
    );
  }
}


