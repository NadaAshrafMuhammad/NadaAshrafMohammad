import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_nada_ashraf_mohammad/Data/quiz_app_data.dart';
import 'package:quiz_app_nada_ashraf_mohammad/Screens/score_screen.dart';
import 'package:quiz_app_nada_ashraf_mohammad/widgets/Answer_container.dart';

class QuizScreen extends StatefulWidget {
  final Map dataset;

  QuizScreen({super.key, required this.dataset});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller6;
  late final AnimationController _controller7;
  late final AnimationController _controller8;
  late final AnimationController _controller9;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller6 = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );
    _controller6.forward();

    _controller7 = AnimationController(
      duration: Duration(seconds: 4),
      vsync: this,
    );
    _controller7.forward();

    _controller8 = AnimationController(
      duration: Duration(seconds: 6),
      vsync: this,
    );
    _controller8.forward();

    _controller9 = AnimationController(
      duration: Duration(seconds: 8),
      vsync: this,
    );
    _controller9.forward();
  }

  int index = 0;
  int totalScore = 0;
  int numberofQues = 0;

  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
    );
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: RotationTransition(
              turns: _controller6, child: Text(widget.dataset["categoryName"])),
          leading: Center(
              child: Text(
                  '${index + 1}/ ${(widget.dataset["data"] as List).length}')),
          backgroundColor: widget.dataset["color"],
          actions: <Widget>[
            Image.asset(
              'images/sportLogo.png',
            ),
          ],
        ),
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(255, 248, 250, 249),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.16,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: widget.dataset["color"],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizeTransition(
                              sizeFactor: _controller6,
                              axis: Axis.horizontal,
                              axisAlignment: -1,
                              child: Text(
                                'Question ${index + 1}: ',
                                style: GoogleFonts.odibeeSans(
                                    decoration: TextDecoration.underline,
                                    fontSize: 30),
                              )),
                          SizeTransition(
                            sizeFactor: _controller7,
                              axis: Axis.horizontal,
                              axisAlignment: -1,
                            child: Text(
                              widget.dataset["data"][index]["question"],
                              style: GoogleFonts.k2d(fontSize: 27),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                SizeTransition(
                  sizeFactor: _controller8,
                              axis: Axis.horizontal,
                              axisAlignment: -1,
                  child: Text(
                    'Choices is :',
                    style: GoogleFonts.k2d(fontSize: 27),
                  ),
                ),
                for (int i = 0;
                    i <
                        (widget.dataset["data"][index]["answers"] as List)
                            .length;
                    i++)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        totalScore += (widget.dataset["data"][index]["answers"]
                            [i]["score"] as int);
                        if (index + 1 <
                            (widget.dataset["data"] as List).length) {
                          setState(() {
                            index++;
                          });
                        } else {
                          numberofQues =
                              (widget.dataset["data"] as List).length;
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) => ScoreScreen(
                                score: totalScore,
                                que: numberofQues,
                              ),
                            ),
                          );
                        }
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: widget.dataset["color"],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizeTransition(
                              sizeFactor: _controller9,
                              axis: Axis.horizontal,
                              axisAlignment: -1,
                              child: Text(
                                widget.dataset["data"][index]["answers"][i]
                                    ["ans"],
                                style: GoogleFonts.k2d(fontSize: 27),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            )));
  }
}
