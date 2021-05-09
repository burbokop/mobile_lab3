

import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:mobile_lab3/viewmodel.dart';
import 'package:provider/provider.dart';

class Rect extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Consumer<ViewModel>(
      builder: (ctx, model, _) => Container(
        width: 200,
        height: 200,
        transformAlignment: Alignment.center,
        transform: Matrix4.rotationZ(model.rotation) *
            Matrix4.diagonal3Values(model.scale, model.scale, model.scale),
        color: model.color,
      )
  );

}