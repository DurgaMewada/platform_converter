import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:platform_converter/Controller/tab_controller.dart';
import 'package:platform_converter/View/android_screens/profile_screen.dart';
import 'package:platform_converter/View/android_screens/setting_screen.dart';

import 'call_screen.dart';
import 'chat_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController =Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Platform Converter',style: TextStyle(color: Colors.white),),
        actions: [Switch(value: false, onChanged: (value) {})
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: TabBar(
            padding: EdgeInsets.zero,
            controller: homeController.tabController,
            indicatorColor: Colors.white,
            indicatorWeight: 3.0,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: 'Add'),
              Tab(text: 'Chats'),
              Tab(text: 'Calls'),
              Tab(text: 'Settings'),
            ],
          ),
        ),
      ),
      body: TabBarView(controller: homeController.tabController,children: [
        ProfileScreen(),
        ChatScreen(),
        CallScreen(),
        SettingScreen(),
      ],),
    );
  }
}
