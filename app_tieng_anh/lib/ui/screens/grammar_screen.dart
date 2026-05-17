import 'package:app_tieng_anh/ui/widgets/question_widgets.dart';
import 'package:flutter/material.dart';

class GrammarScreen extends StatefulWidget
{
  GrammarScreen({super.key});
  @override
  GrammarScreenState  createState()=> GrammarScreenState();
}

class GrammarScreenState extends State<GrammarScreen>
{
  @override
  Widget build(BuildContext context) {
    return QuestionWidgets();
  }

}