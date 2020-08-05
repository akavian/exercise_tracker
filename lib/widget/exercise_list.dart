import 'package:exercsie_tracker/model/exercise.dart';
import 'package:flutter/material.dart';

class ExerciseList extends StatelessWidget {

 List<Exercise> exercises;
 ExerciseList(this.exercises);

  @override
  Widget build(BuildContext context) {
    return Container(
                
                child: Column(
                  children: <Widget>[
                    ...exercises.map((exercise) {
                      return Card(
                       
                        
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Text(
                                exercise.minute.toString(),
                                style: TextStyle(
                                    color: Colors.blue[900],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue[900]),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text(exercise.title,
                                      style: TextStyle(
                                          color: Colors.blue[900],
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold)),
                                  padding: EdgeInsets.all(3),
                                ),
                                Container(
                                  child: Text(
                                    exercise.dateTime.toString(),
                                    style: TextStyle(color: Colors.grey[1000]),
                                  ),
                                  padding: EdgeInsets.all(3),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    }).toList()
                  ],
                ),
              );
  }
}