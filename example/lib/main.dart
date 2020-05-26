import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutterpluginindicator/flutterpluginindicator.dart';

void main() => runApp(MaterialApp(
  home: ActivityIndicatorExample(),
));

class ActivityIndicatorExample extends StatelessWidget{

  ActivityIndicatorController controller;

  void _onActivityIndicatorControllerCreated(ActivityIndicatorController _controller){
    controller = _controller;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text("load"),),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          new Container(
            child: new Stack(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.white,
                  child: UIActivityIndicator(
                    hexColor: "FF0000",
                    onActivityIndicatorWidgetCreated: _onActivityIndicatorControllerCreated,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45.0,right: 45.0,top:200 ,bottom: 50.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: (){
                    controller.start();
                  },
                  child: new Text("Start"),
                ),
                FloatingActionButton(
                  onPressed: (){
                    controller.stop();
                  },
                  child: new Text("Stop"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}

