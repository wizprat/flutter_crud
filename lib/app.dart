import 'package:flutter/material.dart';
import 'package:flutter_crud/routes.dart';
import 'package:get/get.dart';

class LawsonApp extends GetMaterialApp {
  LawsonApp({super.key})
      : super(
        debugShowCheckedModeBanner: false,
            initialRoute: Routes.home,
            getPages: getPages,
            theme: ThemeData(useMaterial3: true));
}
