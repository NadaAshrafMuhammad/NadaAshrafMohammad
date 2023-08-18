import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_nada_ashraf_mohammad/Screens/login_screen.dart';


class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          width:MediaQuery.of(context).size.width ,
          height:MediaQuery.of(context).size.height ,

          decoration: BoxDecoration(
            image: DecorationImage(image: 
                   AssetImage('images/q1.jpg'),
                   fit: BoxFit.cover
                   )

 ),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
          ),

          Image.asset("images/result.png",
          height: MediaQuery.of(context).size.height * 0.2,
          ),

          Text(
            "ITI Quiz App",
            style: GoogleFonts.pacifico(fontSize: 30, color: Colors.yellow),
            ),

          SizedBox(
              height: 20,
            ),


          Text(
              "We are Creative, enjoy our App",
              style: GoogleFonts.dancingScript(fontSize: 20, color: Colors.white),
            ),  
          Spacer(),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
            width: double.infinity,
            child: ElevatedButton(onPressed: () {
              Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                               LoginScreen(),
                        ),
                      );
            }, child: Text("Start"),style: ElevatedButton.styleFrom(backgroundColor: Colors.green),),
            ),
          



        ],
      ),
        )
    );
  }
}
          
            
                            
                      