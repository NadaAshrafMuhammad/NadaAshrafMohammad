import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScoreScreen extends StatelessWidget {
  ScoreScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      
       Container(
        height: MediaQuery.of(context).size.height ,
        width: MediaQuery.of(context).size.width,
        color: Color.fromARGB(255, 170, 238, 164),
         child :Padding(
           padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1),
           child: Column(//mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            
         
                 Padding(
                   padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.3),
                   child: Text('Hello,Nada Your Score is 10/10' ,style: GoogleFonts.pacifico(fontSize: 40, color: const Color.fromARGB(255, 12, 12, 12)),),
                 ),
                
                
                 Padding(
                   padding:  EdgeInsets.symmetric(vertical: 0.2),
                   child: Container(
                            // margin: EdgeInsets.symmetric(horizontal: 12, vertical: MediaQuery.of(context).size.height),
                             
                             child: ElevatedButton(onPressed: () {
                               // Navigator.push(
                               //           context,
                               //           MaterialPageRoute<void>(
                               //             builder: (BuildContext context) =>
                               //                 const LoginScreen(),
                               //           ),
                               //         );
                             }, child: Text("Reset Quiz"),
                             style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 10, 149, 24)
                             ,
                             shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        25.0), // Adjust the radius as needed
                  ),
                  minimumSize: Size(300, 60),
                             ),
                             
                             ),
                             ),
                 ),
         
                 ],),
         )
        

       )

        
         
        
      
    );
  }
}