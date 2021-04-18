import 'package:flutter/material.dart';


class WeatherDetail extends StatelessWidget {
  final String firstText;
  final String secondText;


  WeatherDetail(this.firstText, this.secondText);
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        children: [
          Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 40,
          ),
          SizedBox(height: 5),
          Text(
            firstText,
            style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w200),
          ),
          Text(
            secondText,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w200,
            ),
          ),
        ],
      ),
    );
  }
}
