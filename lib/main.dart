import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
 


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      
      home: Scaffold(
        body:Center(
          
          child: Stack(
             alignment: Alignment.center,
          children: <Widget>[
            
             
               Image.asset('images/q1.jpg'),
            
             Image.asset('images/result.png', 
            height: 70,
            width: 90,
            
            ),
            
            
            Column(
              
             mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                       
                       SizedBox(height: 170),
                       const Text('ITI Quiz App', style: TextStyle(color: Colors.yellow,fontSize: 14,fontFamily: 'Pacifico'),
                       
                       ),
                      SizedBox(height: 5),
                       const Text('We Are Creative enjoy our App', style: TextStyle(color: Colors.white,fontSize: 11,fontFamily: 'Bilbo Swash Caps'),
                       ),
                       
                      Align(
                            alignment: Alignment.bottomCenter,
                            widthFactor: 2,
                            heightFactor:3,
                       child:ElevatedButton(
                         onPressed: () {
                            // do something
                           },
                           child: Text('Start'),
                           style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            minimumSize: Size(150, 30)
                            
                           ),
                            ),
                      ),
                      
                       
              ],
              
            ),
            
            
          ],
            ),
          ),
        ),
      );
  }
}
