import 'dart:math';

import 'package:flutter/material.dart';
import 'result.dart';
class bmiScreen2 extends StatefulWidget {
  const bmiScreen2({super.key});
    
  @override
  State<bmiScreen2> createState() => _bmiScreen2State();
}

class _bmiScreen2State extends State<bmiScreen2> {
  bool male = true ;
  double value = 100 ;
  int counter = 0 ;
  int counter2 = 0 ;
late String result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("bmiScreen" , style: TextStyle(color: Colors.white , fontSize: 25,)),
        centerTitle: true,
      ),
      body: Expanded(child: Container(
        child: Column(
          children: [
            Expanded(child: InkWell(
              onTap: (){
                male = true;
                setState(() {
                  
                });
              },
              child: Container(
                margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: male? Colors.blue : Colors.greenAccent,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center ,
                          children: [
                            Icon(Icons.male,size: 100,color: Colors.white,),
                            Text("Male" ,style: TextStyle(color: Colors.white, fontSize:25 ,)),
                          ],
                        ),
                      )
                      ),
              
                        SizedBox(width: 10,),
              
                      Expanded(child: InkWell(
                        onTap : (){
                              male = false;
                              setState(() {
                                
                              });
                            },
                        child: Container(
                          decoration: BoxDecoration(
                            
                            borderRadius: BorderRadius.circular(10),
                            color: male?  Colors.greenAccent:Colors.pink,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center ,
                            children: [
                              Icon(Icons.female,size: 100,color: Colors.white,),
                              Text("female" ,style: TextStyle(color: Colors.white, fontSize:25 ,)),
                            ],
                          ),
                        ),
                      )
                      ),
                    ],
                  ),
              ),
            )
            ),



            Expanded(child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.greenAccent,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Height" , style: TextStyle(color: Colors.white , fontSize: 25,)),
                    Text("${value.round()}cm", style: TextStyle(color: Colors.white , fontSize: 25,)),
                    Slider(value:  value, onChanged: (double newValue){
                        value = newValue ;
                        setState(() {
                          
                        });
                    },min:100 , max: 200,)
                  ],
                ),
            )
            ),



              Expanded(child: Container(
                margin: EdgeInsets.all(10),
                child: Row(
                children: [
                  Expanded(child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(color: Colors.greenAccent, borderRadius:BorderRadius.circular(10) ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          Text("Waight", style: TextStyle(color: Colors.white , fontSize:40 ,)),
                          Text("$counter", style: TextStyle(color: Colors.white , fontSize:30 ,)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){
                                counter--;
                                setState(() {
                                  
                                });
                              }, child: Text("-" , style: TextStyle(fontSize: 20),)),
                              SizedBox(width: 10,),
                              FloatingActionButton(onPressed: (){
                                counter ++;
                                setState(() {
                                  
                                });
                              }, child: Text("+" , style: TextStyle(fontSize: 20),)),
                            ]
                          ),
                      ],
                    ),
                  )
                  ),

                    SizedBox(width: 10,),

                  Expanded(child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(color: Colors.greenAccent, borderRadius:BorderRadius.circular(10) ),
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                            Text("Age", style: TextStyle(color: Colors.white , fontSize:40 ,)),
                            Text("$counter2", style: TextStyle(color: Colors.white , fontSize:30 ,)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){
                                counter2 --;
                                  setState(() {
                                  
                                });
                              }, child: Text("-" , style: TextStyle(fontSize: 20),)),
                              SizedBox(width: 10,),
                              FloatingActionButton(onPressed: (){
                                counter2 ++;
                                setState(() {
                                  
                                });
                              }, child: Text("+" , style: TextStyle(fontSize: 20),)),
                            ]
                          ),
                      ],
                    ),
                  )
                  ),
                ],
              ),
            )
            ),
        

              
              MaterialButton(
              height: 60,
              color:    Colors.greenAccent ,
              minWidth: double.infinity,
              onPressed:(){
                double bmi = counter / pow(value / 100,2);
                
                if(bmi.round()<18){
                  result="very then";
                }else if(bmi.round()>18 && bmi.round()<25){
                    result = "Normal";
                }else{
                  result = "very fat";
                }
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Result(male: male, value: value, counter: counter, counter2: counter2,result:result)));
              },
            child: Text("calcolate", style: TextStyle(color: Colors.white,fontSize:25 ,) 
            ),
            ),
          ],
        ),
      ),
      ),
      
    
    );
  }
}
 