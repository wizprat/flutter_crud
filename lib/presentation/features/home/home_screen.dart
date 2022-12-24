import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              child: Text('Lawson App'),
            ),
            ListTile(
              title: const Text('Master Status'),
              onTap: () => Get.toNamed('/master_status/main'),
            ),
            ListTile(
              title: const Text('Merchant'),
              onTap: () => Get.toNamed('/merchant/main'),
            ),
            ListTile(
              title: const Text('Order Items'),
              onTap: () => Get.toNamed('/order_items/main'),
            ),
            ListTile(
              title: const Text('City'),
              onTap: () => Get.toNamed('/city/main'),
            ),
            ListTile(
              title: const Text('Order Status'),
              onTap: () => Get.toNamed('/order_status/main'),
            ),
            ListTile(
              title: const Text('User'),
              onTap: () => Get.toNamed('/user/main'),
            ),
          ],
        ),
      ),
    );
  }
}
