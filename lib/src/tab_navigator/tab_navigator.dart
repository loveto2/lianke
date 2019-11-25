import 'package:flutter/material.dart';
import 'package:lianke/src/pages/activity_page.dart';
import 'package:lianke/src/pages/home_page.dart';
import 'package:lianke/src/pages/sales.dart';
import 'package:lianke/src/pages/traffic_page.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  int _currentIndex = 0;
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.white;
  final _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: PageView(
        controller: _controller,
        children: <Widget>[
          HomePage(),
          TrafficPage(),
          ActivityPage(),
          SalesPage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          backgroundColor: Colors.black38,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            _controller.jumpToPage(index);
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                title: Text(
                  '首页',
                  style: TextStyle(
                      color: _currentIndex != 0 ? _defaultColor : _activeColor),
                ),
                icon: Icon(
                  Icons.home,
                  color: _defaultColor,
                ),
                activeIcon: Icon(
                  Icons.home,
                  color: _activeColor,
                ),
                backgroundColor: Colors.black38),
            BottomNavigationBarItem(
                title: Text(
                  '流量管理',
                  style: TextStyle(
                      color: _currentIndex != 1 ? _defaultColor : _activeColor),
                ),
                icon: Icon(
                  Icons.redeem,
                  color: _defaultColor,
                ),
                activeIcon: Icon(
                  Icons.redeem,
                  color: _activeColor,
                ),
                backgroundColor: Colors.black38),
            BottomNavigationBarItem(
                title: Text(
                  '活动管理',
                  style: TextStyle(
                      color: _currentIndex != 2 ? _defaultColor : _activeColor),
                ),
                icon: Icon(
                  Icons.local_activity,
                  color: _defaultColor,
                ),
                activeIcon: Icon(
                  Icons.local_activity,
                  color: _activeColor,
                ),
                backgroundColor: Colors.black38),
            BottomNavigationBarItem(
                title: Text(
                  '智能营销',
                  style: TextStyle(
                      color: _currentIndex != 3 ? _defaultColor : _activeColor),
                ),
                icon: Icon(
                  Icons.bubble_chart,
                  color: _defaultColor,
                ),
                activeIcon: Icon(
                  Icons.bubble_chart,
                  color: _activeColor,
                ),
                backgroundColor: Colors.black38),
          ]),
    );
  }
}
