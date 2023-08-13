import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_nada_ashraf_mohammad/Screens/login_screen.dart';



class AnswerContainer extends StatelessWidget {
  final double? width , height;

  const AnswerContainer({super.key,
  //this.text;
  this.width,
  this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
                height: height! ,
                width: width!,
                
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 91, 192, 109),
                
               ),
              //  child: Padding(
              //    padding: const EdgeInsets.all(40.0),
              //    child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              //      children: [
                     
              //        Text('20'
              //        ,style: GoogleFonts.k2d(fontSize: 27),)
              //        ,
              //      ],
              //    ),
              //  ),
               

                ),

    );
  }
}
          
            
                            
                      