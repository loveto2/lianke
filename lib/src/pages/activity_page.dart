import 'package:flutter/material.dart';

class ActivityPage extends StatefulWidget {
  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(
        child: Text('活动管理', style: TextStyle(color: Colors.white)),
      )
    );
  }
}
