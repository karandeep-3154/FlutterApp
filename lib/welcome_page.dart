import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karandeep/last_screen.dart';
import 'package:karandeep/main.dart';

class WelcomePage extends StatelessWidget{
  var input = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Welcome by Karandeep"),
      ),
      body: Container(
        color: Colors.brown,
        height: double.infinity,
        width: double.infinity,
        child:
          Column(mainAxisAlignment: MainAxisAlignment.center, // Centers vertically
            crossAxisAlignment: CrossAxisAlignment.center, // Centers horizontally
            children: [
              Text("Enter the Value you wish to see in next screen", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              TextField(
                controller: input,
                decoration: InputDecoration(
                  labelText: "Enter your name",
                  hintText: "Type here...",
                  
                  enabledBorder: OutlineInputBorder( // Border when the TextField is not focused
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.grey, // Border color
                      width: 2.0,         // Border width
                    ),
                  ),
                  focusedBorder: OutlineInputBorder( // Border when the TextField is focused
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.green, // Border color
                      width: 3.0,          // Border width
                    ),// Adds a border around the TextField
                ),
              ),),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> LastPage(input.text.toString())));
              }, child: Text("Next", style: TextStyle(fontSize: 43),)
              )
            ],

        ),
      ),
    );
    throw UnimplementedError();
  }

}