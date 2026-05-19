import 'package:flutter/material.dart';
import 'package:restapi_integration/api/api_service.dart';
import 'package:dio/dio.dart';
import 'package:restapi_integration/screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}
