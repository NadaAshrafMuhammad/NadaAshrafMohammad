import 'package:flutter/material.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 53, 129, 55),
       body: ListView(
        children: [
            Image(
                image: AssetImage('images/logo.png'),
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.3,
              ),

              Stack(children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 230, 232, 230),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(20.0),
                        bottomLeft: Radius.circular(0.0)),
                  ),
                  width: MediaQuery.of(context).size.width, 
                  height: MediaQuery.of(context).size.height * 0.7,

                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 30),
                  child: Text(
                    textAlign: TextAlign.center,

                    'Login',
                    style: TextStyle(fontWeight: FontWeight.bold , fontSize: 40),
                  ),
                     ),
                    
                     Column(
                      children: [
                         SizedBox(
                      height: MediaQuery.of(context).size.height * 0.13,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      alignment: Alignment.center,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 249, 248, 248),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              width: 1,
                              color: Color.fromARGB(255, 185, 183, 183))),
                              
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 0.1),
                        
                        child: TextField(
                          
                          //scrollPadding: EdgeInsets.all(10.0),
                          style: TextStyle(fontSize: 17.0),
                          decoration: InputDecoration(
                             
                            //contentPadding: EdgeInsets.symmetric(vertical: 90,horizontal: 90),
                            prefixIcon: Icon(
                              Icons.person,
                              size: 25,
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'Username',
                          ),
                        ),
                      ),

                    ),


                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      alignment: Alignment.center,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 249, 248, 248),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              width: 1,
                              color: Color.fromARGB(255, 185, 183, 183))),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 0.1),
                        child: TextField(
                            style: TextStyle(fontSize: 17.0),
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock,
                                size: 25,
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'Password',
                            ),
                            obscureText: true),
                      ),
                    ),
                   
                   SizedBox(height: 10),
                    
                    Container(
                    alignment: Alignment.centerRight,  
                    margin: EdgeInsets.symmetric(horizontal: 67),
                    padding: EdgeInsets.symmetric(horizontal: 0.8),
                    child: Text('New to quiz app?',style: TextStyle(
                      
                            color: Colors.black,)
                    ),

                    ),

                    SizedBox(
                      height: 40,
                    ),

                    Container(
                       margin: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        // do something
                      },
                      child: Text('Login'),
                      
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          //minimumSize: Size(777, 899),
                          padding: const EdgeInsets.symmetric(horizontal: 60),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
                          ),
                          
                    ),
                    ),

                    Image(
                image: AssetImage('images/id1.png'),
                //width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.1,
              ),
                  

                    Text('Use touch ID',style: TextStyle(
                            color: Colors.grey,)
                    ),
                    
                    Container(
                    alignment: Alignment.centerLeft,  
                    margin: EdgeInsets.symmetric(horizontal: 67, vertical: 20),
                    padding: EdgeInsets.symmetric(horizontal: 0.8),
                    child: Text('Remember me',style: TextStyle(
                      
                            color: Colors.black,)
                    ),

                    )
                    

                      ],
                     )

                      ],
                      
                      )
              
                    
                    

                     
                     
                      
        ],
       )
             


      //       ]
      //     ),
      // ),
    );
  }
}
