import 'package:flutter/material.dart';
import 'package:set_value_login/home.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: signin(),));
}

class signin extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>signinState();

}
class signinState extends State{

  String email="adc@gmail.com";
  String pass = "abc123";

  final em_controller=TextEditingController();
  final pa_controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: 
        [
          Color.fromARGB(255, 100, 21, 15),
          Color.fromARGB(255, 176, 59, 51),
          Color.fromARGB(255, 100, 21, 15),
        ])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Log In",style: TextStyle(fontSize: 40,color: const Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold),),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 300,
                  child: TextField(
                    controller: em_controller,
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)
                        ),
                      ),focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)
                      )
                    )
                  ),
                ),
              ),
      
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 300,
                  child: TextField(
                    controller: pa_controller,
                    decoration: InputDecoration(
                      labelText: "Password",
                       labelStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)
                      )
                             
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              ElevatedButton(onPressed: ()
              {
                if(email==em_controller.text && pass==pa_controller.text)
                {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Home()));
      
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid email or password or empty field"),backgroundColor: Color.fromARGB(255, 236, 107, 98),));
                }
                
              }, 
              style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 55, 16, 13)),
              child: Text("Login",style: TextStyle(color: Colors.white),))
      
              
            ],
      
          ),
        ),
      ),
    );
  }

}