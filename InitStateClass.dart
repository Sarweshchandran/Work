import 'package:flutter/material.dart';

class InitStateCall extends StatefulWidget {
  const InitStateCall({super.key});

  @override
  State<InitStateCall> createState() => _InitStateCallState();
}

class _InitStateCallState extends State<InitStateCall> {
  @override
  String value = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      value = "Hello from init State";
    });
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.red,
        title: Text('Init State'),
      ),
      body: Center(
        child: Text(value),
      ),
    );
  }
}
