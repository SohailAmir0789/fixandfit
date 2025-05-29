import 'package:fixandfit/aboutus.dart';
import 'package:fixandfit/home_screen.dart';
import 'package:fixandfit/login_screen.dart';
import 'package:fixandfit/notifications.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Bottomnavigation extends StatelessWidget {
  const Bottomnavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => NavigationBar(
            elevation: 0,
            indicatorColor: Colors.grey.shade300,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) {
              controller.selectedIndex.value = index;
            },
            destinations: const [
              NavigationDestination(
                  icon: Icon(Icons.home_max_outlined), label: 'Home'),
              NavigationDestination(
                  icon: Icon(Icons.shopping_cart_checkout_outlined),
                  label: 'Orders'),
              NavigationDestination(
                  icon: Icon(Icons.contact_emergency_outlined),
                  label: 'Contact'),
              NavigationDestination(
                  icon: Icon(Icons.notifications_none_outlined),
                  label: 'Notification')
            ]),
      ),
    );
  }
}

class NavigationController extends GetxController {
  RxInt selectedIndex = 0.obs;

  List<Widget> screens = [
    HomeScreen(username: "Sohail"),
    LoginScreen(),
    const NotificationPage(),
    const AboutUs()
  ];
}
