import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mobile_lab3/rect.dart';
import 'package:mobile_lab3/viewcontroller.dart';
import 'package:mobile_lab3/viewmodel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
      title: "gogadoda",
      home: Scaffold(
          body: CoreWidget()
      )
  ));
}

class CoreWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider<ViewModel>(
      create: (_) => ViewModel(),
      child: Container(
          margin: EdgeInsets.fromLTRB(4, 4, 4, 4),
          color: Colors.black54,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ViewController(),
              Rect(),
            ],
          )
      )
  );

}
