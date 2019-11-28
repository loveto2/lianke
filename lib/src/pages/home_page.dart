import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:lianke/src/bean/ResponseDO.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ResponseDO response = ResponseDO(store: 333, person: 555, price: 999);

  Future<ResponseDO> fetchGet() async {
    final url = 'http://118.190.158.81:3333';
    final response = await http.get(url);
    final result = json.decode(response.body);
    return ResponseDO.fromJson(result);
  }
  @override
  void initState() {
    super.initState();
    fetchGet().then((ResponseDO result) {
      setState(() {
        response = result;
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
            height: 28.0,
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Center(
                  child: RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: '链',
                          style: TextStyle(
                              color: Colors.deepOrange, fontSize: 16.0)),
                      TextSpan(
                          text: '到合作， 获到',
                          style:
                              TextStyle(color: Colors.white, fontSize: 12.0)),
                      TextSpan(
                          text: '客',
                          style: TextStyle(
                              color: Colors.deepOrange, fontSize: 16.0)),
                    ]),
                  ),
                )),
                Icon(Icons.notifications_none, color: Colors.white)
              ],
            )),
        Container(
          height: 93.0,
          margin: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.grey, width: 1.0))),
          child: Row(
            children: <Widget>[
              Container(
                width: 83.0,
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(color: Colors.grey, width: 1.0))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child:
                          Text('我的门店', style: TextStyle(color: Colors.white)),
                    ),
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Text(response.store.toString(),
                              style: TextStyle(
                                  color: Colors.white, fontSize: 30.0)),
                        ),
                        Container(
                          child: Text('家',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 11.0)),
                          margin: EdgeInsets.only(top: 20.0),
                        )
                      ],
                    )),
                  ],
                ),
              ),
              Container(
                width: 120.0,
                margin: EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      child:
                          Text('引流人次', style: TextStyle(color: Colors.white)),
                    ),
                    Container(
                        child: Row(
                      children: <Widget>[
                        Container(
                          child: Text(response.person.toString(),
                              style: TextStyle(
                                  color: Colors.white, fontSize: 30.0)),
                        ),
                        Container(
                          child: Text('人次',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 11.0)),
                          margin: EdgeInsets.only(top: 20.0),
                        )
                      ],
                    )),
                  ],
                ),
              ),
              Container(
                width: 120.0,
                margin: EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 5.0),
                      child:
                          Text('平均客单价', style: TextStyle(color: Colors.white)),
                    ),
                    Container(
                        child: Row(
                      children: <Widget>[
                        Container(
                          child: Text('￥${response.price.toString()}',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 28.0)),
                        ),
                        Container(
                          child: Text('元',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 11.0)),
                          margin: EdgeInsets.only(top: 20.0),
                        )
                      ],
                    )),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          width: 65.0,
          height: 18.0,
          margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 24.0),
          child: Text('引流总收入',
              style: TextStyle(color: Colors.white, fontSize: 12.0)),
        ),
        Container(
          height: 56.0,
          child: Container(
              margin: EdgeInsets.only(left: 8.0, right: 16.0),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text('￥28,690',
                        style: TextStyle(color: Colors.white, fontSize: 42.0)),
                  ),
                  Container(
                    child: Text('元',
                        style: TextStyle(color: Colors.white, fontSize: 10.0)),
                    margin: EdgeInsets.only(top: 38.0),
                  )
                ],
              )),
        ),
        Container(
          height: 45.0,
          margin:
              EdgeInsets.only(left: 16.0, right: 16.0, top: 32.0, bottom: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(child: Image.asset('lib/src/images/input.png')),
              Expanded(child: Image.asset('lib/src/images/output.png'))
            ],
          ),
        ),
        Container(
          width: 343.0,
          height: 152.0,
          margin: EdgeInsets.only(left: 16.0, right: 16.0),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(8.0))
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 113.0,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.black38, width: 1.0))),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        color: Colors.black38, width: 1.0))),
                            padding: EdgeInsets.only(top: 23.0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Text('内部合作关系链',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13.0)),
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            child: Text('输入',
                                                style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 11.0)),
                                          ),
                                          Container(
                                            child: Text('32',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 36.0)),
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            child: Text('输出',
                                                style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 11.0)),
                                          ),
                                          Container(
                                            child: Text('6',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 36.0)),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ))),
                    Expanded(
                        child: Container(
                            padding: EdgeInsets.only(top: 23.0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Text('外部合作关系链',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13.0)),
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            child: Text('输入',
                                                style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 11.0)),
                                          ),
                                          Container(
                                            child: Text('6',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 36.0)),
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            child: Text('输出',
                                                style: TextStyle(
                                                    color: Colors.white70,
                                                    fontSize: 11.0)),
                                          ),
                                          Container(
                                            child: Text('2',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 36.0)),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ))),
                  ],
                ),
              ),
              Container(
                height: 39.0,
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: Text('当前商家级别：B',
                          style:
                              TextStyle(color: Colors.white70, fontSize: 11.0)),
                    ),
                    Expanded(
                        child: Container(
                      alignment: Alignment.center,
                      child: Text('本月获取积分：3000分',
                          style:
                              TextStyle(color: Colors.white70, fontSize: 11.0)),
                    )),
                    Container(
                      alignment: Alignment.center,
                      child: Text('升级还需：600分',
                          style:
                              TextStyle(color: Colors.white70, fontSize: 11.0)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          height: 128.0,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(8.0))
          ),
          margin: EdgeInsets.only(left: 12.0, right: 12.0, top: 30.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 14.0, right: 14.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 5.0),
                              child: Text('德得轩1号店', style: TextStyle(color: Colors.white70, fontSize: 13.0)),
                            ),
                            Expanded(
                                child: Container(
                                  child: Divider(height: 1.0, color: Colors.white70,)
                                )
                            ),
                            Container(
                              child: Text('成交320元', style: TextStyle(color: Colors.red, fontSize: 13.0)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(bottom: 5.0),
                              child: Text('河马美拍', style: TextStyle(color: Colors.white70, fontSize: 13.0)),
                            ),
                            Expanded(
                                child: Container(
                                  child: Divider(height: 1.0, color: Colors.white70,)
                                )
                            ),
                            Container(
                              child: Text('成交320元', style: TextStyle(color: Colors.yellow, fontSize: 13.0)),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                )
              ),
              Container(
                width: 100.0,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(5.0), bottomRight: Radius.circular(5.0))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text('马上', style: TextStyle(color: Colors.white, fontSize: 24.0)),
                    ),
                    Container(
                      child: Text('链接', style: TextStyle(color: Colors.white, fontSize: 24.0)),
                    ),
                    Container(
                      child: Text('--->', style: TextStyle(color: Colors.white, fontSize: 24.0)),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
