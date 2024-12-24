import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LastPage extends StatelessWidget{
  var prev_value;
  LastPage(this.prev_value);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Welcome by Karandeep"),
      ),
      body: Container(
        color: Colors.amber,
        height: double.infinity,
        width: double.infinity,
        child:
        Column(mainAxisAlignment: MainAxisAlignment.center, // Centers vertically
          crossAxisAlignment: CrossAxisAlignment.center, // Centers horizontally
          children: [
            Text("Value Received is ${this.prev_value}", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),


          ],

        ),
      ),
    );
    throw UnimplementedError();
  }

}