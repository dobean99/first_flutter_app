import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final Function selecHander;
  final String answer;
  Answer(this.selecHander, this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin:EdgeInsets.all(10) ,
      child:
      // ignore: deprecated_member_use
      RaisedButton(
        color: Colors.blue,

        child: Text(answer),
        onPressed: selecHander,
      ),
    );
  }
}
