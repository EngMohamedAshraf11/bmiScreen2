import 'package:flutter/material.dart';
import 'bmiScreen2.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.greenAccent,
      body:Column(
        children: [
            Padding(
          padding: const EdgeInsets.only(left:10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
            children: [
                  SizedBox(height:50,),
                Text("Login" , style: TextStyle(fontSize: 50,color: Colors.white, fontWeight: FontWeight.bold,)),
                SizedBox(height: 20,),
                Text("Enter a beautiful world" , style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold,)),
              ],
          ),
        ),
                
                SizedBox(height: 80,),
                
            Expanded(
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: const Color.fromARGB(255, 243, 243, 243),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "Email",
                                hintText: "Enter Your Email",
                                prefixIcon: Icon(Icons.email),
                                border: OutlineInputBorder(),
                                
                              ),
                            ),
                            SizedBox(height: 20,),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "Password",
                                hintText: "Enter Your Password",
                                prefixIcon: Icon(Icons.lock),
                                border: OutlineInputBorder(),
                                suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.visibility)),
                              ),
                            ),
                            SizedBox(height: 10,),
                            TextButton(onPressed: (){}, child: Text("Forgot Password" , style: TextStyle(color:Colors.greenAccent , ),)),

                          SizedBox(height: 80,),

                          MaterialButton(onPressed: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){return bmiScreen2();}));
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.greenAccent,
                              ),
                            alignment: Alignment.center,
                            
                            
                            child: Text("Login" ,style: TextStyle(fontSize:20 , color: Colors.white),),
                            height: 50,
                            width:double.infinity ,
                          ),
                          
                          
                          ),
                        ],
                      ),
                    ),
                  ),
              ),


        ],
      )  ,

    );
  }
}

