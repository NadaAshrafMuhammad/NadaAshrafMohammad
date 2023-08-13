import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_nada_ashraf_mohammad/Screens/score_screen.dart';
import 'package:quiz_app_nada_ashraf_mohammad/widgets/Answer_container.dart';

class QuizScreen extends StatelessWidget {
  QuizScreen({super.key});

List answers =['20','11','12','14'];

  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
    );
    return Scaffold(
      appBar: AppBar(title: const Text('1/10     Sport Test'),
      
        backgroundColor: Color.fromARGB(255, 31, 162, 96),
        actions: <Widget>[
          Image.asset('images/sportLogo.png',),
          
          
        ],
      ),
      body: 
    
      Container(
       
        height: MediaQuery.of(context).size.height ,
        width: MediaQuery.of(context).size.width,

        color: Color.fromARGB(255, 215, 225, 223),


        child: Column(
              children: [

                SizedBox(height: MediaQuery.of(context).size.height*0.08,),
                Container(
                height: MediaQuery.of(context).size.height*0.16 ,
                width: MediaQuery.of(context).size.width*0.9,
                
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 91, 192, 109),
                
               ),
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text('Question 1: ',style: GoogleFonts.odibeeSans(decoration: TextDecoration.underline,fontSize: 30),),
                     Text('What is the number of Football players?'
                     ,style: GoogleFonts.k2d(fontSize: 27),)
                     ,
                   ],
                 ),
               ),
               

                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                Text('Choices is :', style: GoogleFonts.k2d(fontSize: 27),),
              
              

              for(int i=0;i<4;i++)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                     Navigator.push(context, MaterialPageRoute<void>(
                          builder: (BuildContext context) =>  ScoreScreen(),
                       ),);
                 },
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.1 ,
                    width: MediaQuery.of(context).size.width*0.9,
                    
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 91, 192, 109),
                    
                   ),
                   child: Column(mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       
                       Text(answers[i]
                       ,style: GoogleFonts.k2d(fontSize: 27),)
                       ,
                     ],
                   ),
                   
                              
                    ),
                ),
              ),
             

                

                
             
                
              ],

        )


        
      )
      


        
         
        
      
    );
  }
}