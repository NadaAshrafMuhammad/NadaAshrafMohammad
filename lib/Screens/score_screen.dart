import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_nada_ashraf_mohammad/Data/quiz_app_data.dart';
import 'package:quiz_app_nada_ashraf_mohammad/Screens/category_screen.dart';
import 'package:quiz_app_nada_ashraf_mohammad/Screens/opening_screen.dart';
import 'package:lottie/lottie.dart';

class ScoreScreen extends StatefulWidget {
  final int score;
  final int que;
  const ScoreScreen({super.key, required this.score, required this.que});

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = AnimationController(
      duration:  Duration(seconds: 5),
      vsync: this,
    );
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(255, 196, 198, 196),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  FadeTransition(
                    opacity: _controller,
                    child: Text(
                      'Congrates ,${Name.text} Your Score is ${widget.score}/ ${widget.que}',
                      style: GoogleFonts.pacifico(
                          fontSize: 40,
                          color: const Color.fromARGB(255, 12, 12, 12)),
                    ),
                  ),
                  Lottie.asset("images/animation_lluo3msy.json"),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 0.2),
                    child: Container(
                      // margin: EdgeInsets.symmetric(horizontal: 12, vertical: MediaQuery.of(context).size.height),

                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  OpeningScreen(),
                            ),
                          );
                        },
                        child: Text("Reset Quiz"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 10, 149, 24),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                25.0), // Adjust the radius as needed
                          ),
                          minimumSize: Size(300, 60),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }

  @override
  void dispose() {
    Name.dispose();
    print('Dispose used');
    super.dispose();
  }
}
