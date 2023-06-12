import 'dart:async';


import 'package:flutter/material.dart';

import 'main.dart';


class Splask extends StatefulWidget{
  const Splask({super.key});

  @override
  State<Splask> createState() => _SplaskState();
}

class _SplaskState extends State<Splask> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>TodoList()));
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.green,

        ),
        alignment: Alignment.center,
        child: Text('ToDoList',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),),
      ),
    );
  }
}