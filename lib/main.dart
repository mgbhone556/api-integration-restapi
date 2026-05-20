import 'package:flutter/material.dart';
import 'package:restapi_integration/api/api_service.dart';
import 'package:restapi_integration/screen/home.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Dio dio = Dio();
    ApiService apiService = ApiService(dio);
    Get.put(apiService);
    return GetMaterialApp(home: Home());
  }
}
