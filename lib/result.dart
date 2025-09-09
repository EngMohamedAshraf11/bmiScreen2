import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final  bool male ;
  final double value  ;
  final int counter  ;
  final int counter2  ;
  final String result;
  const Result({super.key, required this.male, required this.value, required this.counter, required this.counter2 , required this.result});

  @override 
  Widget build(BuildContext context) {
    var materialButton = MaterialButton( 
        height: 60,
              color:    Colors.greenAccent ,
              minWidth: double.infinity,
        onPressed:(){} );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("Bmi"),
      ),
      body: Center( child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            
            Text("Genger",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(width: 30,),
            Text(male? "Male" : "Female",  style: TextStyle(color: Colors.greenAccent,fontSize: 30,fontWeight: FontWeight.bold),),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("age",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(width: 30,),
            Text(counter2.toString(),  style: TextStyle(color: Colors.greenAccent,fontSize: 30,fontWeight: FontWeight.bold),),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Result",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(width: 30,),
            Text(result,  style: TextStyle(color: Colors.greenAccent,fontSize: 30,fontWeight: FontWeight.bold),),
          ],
        ),
      ],
      ),
      ),

        
    );
  }
}