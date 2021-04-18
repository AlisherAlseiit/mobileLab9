import 'package:flutter/material.dart';

class CityDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Murmansk Oblast, RU',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 31),
        ),
        SizedBox(height: 10),
        Text(
          'Friday, Mar 20, 2020',
          style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.white,
              fontSize: 24),
        ),
      ],
    );
  }
}
