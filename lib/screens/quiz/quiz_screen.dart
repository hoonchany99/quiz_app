import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_background/controllers/question_controller.dart';
import 'package:my_background/screens/quiz/components/body.dart';
import 'package:websafe_svg/websafe_svg.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Flutter show the back button automatically
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          FlatButton(
            onPressed: _controller.nextQuestion,
            child: Text("Skip"),
          )
        ],
      ),
      body: Body(),
    );
  }
}
