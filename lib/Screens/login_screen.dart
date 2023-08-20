import 'package:flutter/material.dart';
import 'package:quiz_app_nada_ashraf_mohammad/Data/quiz_app_data.dart';
import 'package:quiz_app_nada_ashraf_mohammad/Screens/category_screen.dart';



class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

    final _formKey = GlobalKey<FormState>(); 
   // RegExp regex =new RegExp('');
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.green,
        backgroundColor: const Color.fromARGB(255, 53, 129, 55),
       
        
           body: ListView(
             children: [
               Image(
                    image: AssetImage('images/logo.png'),
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.height * 0.23,
                  ),
            
          
        
          Stack(
            
              // unbounded widget
              alignment: Alignment.bottomCenter,
              children: [
                
         
          Container(
            padding: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height * 0.73, // width: 50,
            width: double.infinity,
          
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 226, 216, 216),
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
          
            child: Form(
                 key: _formKey, 
              child: Column(children: [
                Text(
                  "Login",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 16,
                ),
            
                // for (int i = 0;
                //     i < 5;
                //     i++) // For Loop: used for repeating same code

                 TextFormField(
                  
                   validator: (value) {  
                if(value!.isEmpty){
                return 'Email must not be empty';  }    
                if (RegExp('^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\\.[a-z]+\$').hasMatch(value.toString())==false) {  
                  return 'Please enter valid Email';  }
                 
               
                
                // return null;  
              }, 
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    
                    hintText: "Email",
                    // errorBorder: ,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 36, 4, 240), width: 2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    // border: ,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    // border:
                  ),
                ),
            
                SizedBox(
                  height: 8,
                ),





                TextFormField(
                   
                   validator: (value) {  
                if(value!.isEmpty){
                return 'user name must not be empty';  }    
                if (RegExp('^[A-Z][a-zA-Z0-9_-]{8,}\$').hasMatch(value.toString())==false) {  
                  return 'Please enter valid user name';  }
                 
               
                
                // return null;  
              }, 
              controller: Name, 
          
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "User name",
                    // errorBorder: ,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 36, 4, 240), width: 2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    // border: ,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    // border:
                  )
                ),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                   validator: (value) {  
                if(value!.isEmpty){
                return 'Password must not be empty';  }    
                if (RegExp('^(?=.*[0-9])|(?=.*[a-z])|(?=.*[A-Z])|(?=.*\\d)|(?=.*[@\\\$!%*?&])|[A-Za-z\\d@\\\$!%*?&]{10,}\$').hasMatch(value.toString())==false) {  
                  return 'Please enter valid Password';  }
                 
               
                
                // return null;  
              }, 
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility),
                    hintText: "Password",
                    // errorBorder: ,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 36, 4, 240), width: 2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    // border: ,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    // border:
                  ),
                ),
          
                SizedBox(
                  height: 12,
                ),
               
            
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("New to quiz app?"),
                    // SizedBox(
                    //   width: 4,
                    // ),
                    InkWell(
                      onTap: () {
                        print("Hello we are ITI");
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
            
                SizedBox(
                  height: 30,
                ),
            
                ElevatedButton(
                  
                  onPressed: () {
                    
                    if(_formKey.currentState!.validate())
                   


                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => CategoryScreen(),
                      ),
                    );
                  },
                  child: Text("Login"),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            25.0), // Adjust the radius as needed
                      ),
                      backgroundColor: Colors.green,
                      elevation: 10,
                      minimumSize: Size(130, 40)),
                ),
                SizedBox(
                  height: 15,
                ),
                Icon(
                  Icons.fingerprint,
                  color: Colors.blue,
                  size: 50,
                ),
                Text(
                  "Touch ID",
                  style: TextStyle(color: Colors.grey),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value) {}),
                        Text("Remember me"),
                      ],
                    ),
            
                    // Spacer(),
                    InkWell(
                      onTap: () {
                        print("Hello we are ITI");
                      },
                      child: Text(
                        "Forget password",
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ]),
            ),
          )
              ],
            ),
             ],
           )

        // Container(
        //   // color: Colors.green,
        //   child: Column(children: [
        //     Container(
        //       // color: Colors.green,
        //       height: MediaQuery.of(context).size.height * 1 / 3,
        //     ),
        //     Container(
        //       decoration: BoxDecoration(
        //           color: Color.fromARGB(255, 245, 232, 232),
        //           borderRadius: BorderRadius.vertical(top: Radius.circular(40))),
        //       height: MediaQuery.of(context).size.height * 2 / 3,
        //     )
        //   ]),
        // ),
        );
  }
  
}