import 'package:flutter/material.dart';
import 'package:myfirstproject/screens/InitStateClass.dart';

class SetStateCall extends StatefulWidget {
  const SetStateCall({super.key});

  @override
  State<SetStateCall> createState() => _SetStateCallState();
}

class _SetStateCallState extends State<SetStateCall> {
  @override
  String SetStateValue='Hello world';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Set State'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:Text(SetStateValue),
          ),
          Center(
            child:Text('Good Evening'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            SetStateValue = "Good Morning!";
          });
          Navigator.push(context,MaterialPageRoute(builder: (context)=>InitStateCall()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

