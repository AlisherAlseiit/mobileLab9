import 'package:flutter/material.dart';
import 'package:flutter_lab9/city_detail.dart';
import 'package:flutter_lab9/temperature_detail.dart';
import 'package:flutter_lab9/weather_detail.dart';
import 'package:flutter_lab9/weather_forecast.dart';

import './models/forecast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Forecast',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Forecast> _forecast = [
    Forecast(
      id: '1',
      day: 'Monday',
      temperature: "9 \u2109",
    ),
    Forecast(
      id: '2',
      day: 'Tuesday',
      temperature: "8 \u2109",
    ),
    Forecast(
      id: '3',
      day: 'Wednesday',
      temperature: "10 \u2109",
    ),
    Forecast(
      id: '4',
      day: 'Thursday',
      temperature: "15 \u2109",
    ),
    Forecast(
      id: '5',
      day: 'Friday',
      temperature: "6 \u2109",
    ),
    Forecast(
      id: '6',
      day: 'Saturday',
      temperature: "5 \u2109",
    ),
    Forecast(
      id: '7',
      day: 'Sunday',
      temperature: "22 \u2109",
    ),
  ];

  Widget _buildAppBar() {
    return AppBar(
      centerTitle: true,
      title: Text('Weather Forecast',
          style:
              TextStyle(fontSize: 23)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final PreferredSizeWidget appBar = _buildAppBar();
    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: (mediaQuery.size.height -
                        appBar.preferredSize.height -
                        mediaQuery.padding.top) *
                    0.10,
                margin: EdgeInsets.only(
                  top: 5,
                  left: 10,
                  right: 10,
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 18, color: Colors.white),
                      hintText: 'Enter City Name',
                      prefixIcon: Icon(
                        Icons.search_outlined,
                        color: Colors.white,
                      ),
                      enabledBorder: InputBorder.none,
                      ),
                ),
              ),
              Container(
                height: (mediaQuery.size.height -
                        appBar.preferredSize.height -
                        mediaQuery.padding.top) *
                    0.14,
                child: CityDetail(),
              ),
              Container(
                height: (mediaQuery.size.height -
                        appBar.preferredSize.height -
                        mediaQuery.padding.top) *
                    0.22,
                margin: EdgeInsets.only(left: 75),
                child: TemperatureDetail(),
              ),
              Container(
                height: (mediaQuery.size.height -
                        appBar.preferredSize.height -
                        mediaQuery.padding.top) *
                    0.20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    WeatherDetail('5', 'km/hr'),
                    WeatherDetail('3', '%'),
                    WeatherDetail('20', '%'),
                  ],
                ),
              ),
              Container(
                  height: (mediaQuery.size.height -
                      appBar.preferredSize.height -
                      mediaQuery.padding.top) *
                      0.03,
                  child: Text("7-DAY WEATHER FORECAST", style: TextStyle(color: Colors.white, fontSize: 20))),
              Container(
                // margin: EdgeInsets.symmetric(vertical: 5.0),
                height: (mediaQuery.size.height -
                        appBar.preferredSize.height -
                        mediaQuery.padding.top) *
                    0.25,
                width: 400,
                child: WeatherForecast(_forecast),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
