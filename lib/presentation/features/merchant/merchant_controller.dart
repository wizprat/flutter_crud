import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class MerchantController extends GetxController {
  TextEditingController dateExpiredController = TextEditingController();

  void showExpiredDatePicker(BuildContext context) {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(DateTime.now().year - 50),
            lastDate: DateTime(DateTime.now().year + 50))
        .then((value) =>
            dateExpiredController.text = DateFormat.yMd().format(value!));
  }
}
