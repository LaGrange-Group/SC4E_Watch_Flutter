import 'package:flutter/material.dart';
import 'package:s4ce_watch/screens/home/home.dart';
import 'package:s4ce_watch/screens/wrapper.dart';
import 'package:s4ce_watch/services/ListingService.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Wrapper(),
    );
  }
}

