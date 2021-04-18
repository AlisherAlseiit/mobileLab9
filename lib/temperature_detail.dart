import 'package:flutter/material.dart';

class TemperatureDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.wb_sunny,
        size: 90,
        color: Colors.white,
      ),
      title: Text(
        '14 \u2109',
        style: TextStyle(
            fontSize: 49,
            color: Colors.white,
            fontWeight: FontWeight.w200),
      ),
      subtitle: Text(
        'LIGHT SNOW',
        style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w200),
      ),
    );
  }
}
