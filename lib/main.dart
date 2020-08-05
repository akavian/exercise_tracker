import 'package:exercsie_tracker/widget/chart_container.dart';
import 'package:exercsie_tracker/widget/user_exercises.dart';

import 'package:flutter/material.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Exercise Tracker"),
          ),
          body: Container(
            margin: EdgeInsets.all(7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ChartContainer(),
                Container(
                  //margin: EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(border: null),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      TextField(
                        controller: null,
                        style: TextStyle(
                          fontSize: 17,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Title",
                        ),
                      ),
                      TextField(
                        controller: null,
                        style: TextStyle(
                          fontSize: 17,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Amount",
                        ),
                      ),
                      FlatButton(
                          onPressed: null,
                          child: Text(
                            "Add!",
                            style: TextStyle(color: Colors.blue[900], fontWeight: FontWeight.bold, fontSize: 15),
                          ))
                    ],
                  ),
                ),
                UserExercises()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
