import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: Contador(),
    )
  );
}

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int contador = 0;

  void increment(){
    setState(() {
      if (contador<30){
        contador ++;
      }
    });
  }

  void decrement(){
    setState(() {
      if (contador>0){
        contador --; 
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        decoration: BoxDecoration(
          image:DecorationImage(image: AssetImage("img/restaurant.png"),
          fit: BoxFit.cover
          )
          ),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(contador<30?"Pode Entrar!":"Casa Cheia!", style: TextStyle(fontSize: 30.0, color: Colors.white),),
          Text(contador.toString(), style: TextStyle(fontSize: 100.0, color: Colors.white)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: increment, 
                child: Text("Entrou", style: TextStyle(fontSize: 17.0, color: Colors.black)),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: Size(100,100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)
                    )
              )),

              SizedBox(width: 64,),

              TextButton(
                onPressed: decrement, 
                child: Text("Saiu", style: TextStyle(fontSize: 17.0, color: Colors.black)),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: Size(100,100),
                  shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(24)
                  )
              )),
            ],
          )
        ],
      ),
      )
    );
  }
}