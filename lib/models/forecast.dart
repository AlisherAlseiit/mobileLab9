import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Forecast {
  final String id;
  final String day;
  final String temperature;


  Forecast(
      {@required this.id,
        @required this.day,
        @required this.temperature,
        });
}