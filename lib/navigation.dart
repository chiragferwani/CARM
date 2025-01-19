import 'package:carm/analytics.dart';
import 'package:carm/home.dart';
import 'package:carm/management.dart';
import 'package:carm/research.dart';
import 'package:carm/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
        appBar: AppBar(
          title: const Text('CARM', 
          style: TextStyle(
            fontFamily: 'byeno', 
            fontSize: 24,
            color: Colors.white),),
          leading: Icon(Iconsax.home, color: Colors.white,),
          backgroundColor: Colors.blue,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () => Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => SettingsScreen())
              ),
              icon: const Icon(Iconsax.setting, color: Colors.white,),
            ),
          ],
        ),
        bottomNavigationBar: Obx(
          () => NavigationBar(
            height: 80,
            backgroundColor: Colors.white,
            elevation: 0,
            indicatorColor: const Color.fromARGB(255, 226, 226, 226),
            
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) => controller.selectedIndex.value = index,
           
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.buildings), label: 'Company',),  
              NavigationDestination(icon: Icon(Iconsax.like), label: 'Analysis'),
              NavigationDestination(icon: Icon(Iconsax.search_favorite), label: 'Research'),
              NavigationDestination(icon: Icon(Iconsax.people), label: 'Management')
            ],
          ),
        ),
        body: Obx(() => controller.screens[controller.selectedIndex.value])
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    Home(), 
    AnalyticsScreen(),
    ResearchScreen(),
    ManagementScreen()
    ];
}