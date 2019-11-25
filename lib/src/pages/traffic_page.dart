import 'package:flutter/material.dart';

class TrafficPage extends StatefulWidget {
  @override
  _TrafficPageState createState() => _TrafficPageState();
}

class _TrafficPageState extends State<TrafficPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('流量管理', style: TextStyle(color: Colors.white)),
      )
    );
  }
}
