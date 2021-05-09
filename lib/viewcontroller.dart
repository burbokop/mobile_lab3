


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:mobile_lab3/viewmodel.dart';
import 'package:provider/provider.dart';
import 'dart:math';

class ViewController extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("Rotation", style: Theme.of(context).textTheme.headline5),
      Slider(
          value: Provider.of<ViewModel>(context).rotation * 180 / pi,
          onChanged: (val) => Provider.of<ViewModel>(context, listen: false).rotation = val / 180 * pi,
          min: 0,
          max: 360,
      ),
      Text("Scale", style: Theme.of(context).textTheme.headline5),
      Slider(
          value: Provider.of<ViewModel>(context).scale,
          onChanged: (val) => Provider.of<ViewModel>(context, listen: false).scale = val,
          min: 0,
          max: 1,
      ),
      ColorPicker(
        color: Colors.deepPurple,
        onColorChanged: (Color color) => Provider.of<ViewModel>(context, listen: false).color = color,
        width: 44,
        height: 44,
        borderRadius: 22,
        heading: Text(
          'Select color',
          style: Theme.of(context).textTheme.headline5,
        ),
        subheading: Text(
          'Select color shade',
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
    ],
  );

}