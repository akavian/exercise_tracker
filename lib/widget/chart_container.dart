import 'package:flutter/material.dart';
class ChartContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
                          
                width: double.infinity,
               
                child: Card(
                  
                  color: Colors.blue,
                  child: Container(
                    width: double.infinity,
                    child: Text(
                      "hello",
                      textAlign: TextAlign.center,
                      
                    ),
                  ),
                ),
              );
  }
}