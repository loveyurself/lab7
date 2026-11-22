import 'package:flutter/material.dart';

class V1 extends StatefulWidget {
  const V1({super.key});

  @override
  State<V1> createState() => _V1State();
}

class _V1State extends State<V1> {
  double _width = 43.94;
  double _height = 83.80;
  double _radius = 52.57;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Width: ${_width.toStringAsFixed(2)}"),
            Slider(
              value: _width,
              min: 0,
              max: 150,
              onChanged: (val) => setState(() => _width = val),
            ),
            Text("Height: ${_height.toStringAsFixed(2)}"),
            Slider(
              value: _height,
              min: 0,
              max: 150,
              onChanged: (val) => setState(() => _height = val),
            ),
            Text("Radius: ${_radius.toStringAsFixed(2)}"),
            Slider(
              value: _radius,
              min: 0,
              max: 75,
              onChanged: (val) => setState(() => _radius = val),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Container(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(_radius),
            ),
          ),
        ),
      ],
    );
  }
}