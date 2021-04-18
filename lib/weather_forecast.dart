import 'package:flutter/material.dart';
import './models/forecast.dart';

class WeatherForecast extends StatelessWidget {
  final List<Forecast> forecasts;

  WeatherForecast(this.forecasts);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: forecasts
          .map(
            (wf) => Card(
              color: Colors.white38,
              margin: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 6,
              ),
              child: Container(
                width: 210,
                height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      wf.day,
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          wf.temperature,
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.wb_sunny,
                          color: Colors.white,
                          size: 55,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
