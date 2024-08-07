// ignore_for_file: library_prefixes

import 'package:effa/ui/screens/account_setting/account_settings.dart';
import 'package:effa/ui/screens/filter/filter.dart';
import 'package:effa/ui/screens/home/home.dart';
import 'package:effa/ui/screens/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:effa/helper/dio_helper.dart';
import 'package:dio/dio.dart' as Dio;

import '../models/user/user_data.dart';
import '../ui/screens/auth/login.dart';

class MaleDashboardController extends GetxController {
  @override
  void onInit() {
    fetchUserData();
    super.onInit();
  }

  UserInfooo? user;
  Future<void> fetchUserData() async {
    try {
      final Dio.Response response = await dio().get(
        'myData',
      );
      print("MaleDashboardController response == ${response.data}");
      if (response.statusCode == 200) {
        user = UserInfooo.fromJson(response.data);
      }
    } catch (err) {
      Get.snackbar('خطأ في الخدمه', "تحقق من الاتصال بالانترنت",
          backgroundColor: Colors.red,
          borderRadius: 0,
          snackPosition: SnackPosition.BOTTOM);
      // ignore: unnecessary_brace_in_string_interps
    }
  }
  Future<void> logout() async {
    try {
      final Dio.Response response = await dio().post(
        'general/logout',
        queryParameters: {
          'user_id': user!.user!.id!
        }
      );
      print("user_id ${response.data}");
      if (response.statusCode == 200) {
        Get.offAll(LoginPage(), //next page class
            duration: const Duration(
                milliseconds:
                400), //duration of transitions, default 1 sec
            transition: Transition
                .leftToRight //transition effect
        );
      }
    } catch (err) {
      Get.snackbar('خطأ في الخدمه', "تحقق من الاتصال بالانترنت",
          backgroundColor: Colors.red,
          borderRadius: 0,
          snackPosition: SnackPosition.BOTTOM);
      // ignore: unnecessary_brace_in_string_interps
    }
  }

  List<Widget> pages = <Widget>[
    Home(),
    Filter(),
    AccountSettings(),
    Settings(),
  ];
  int selectedIndex = 0;

  void onItemTapped(int index) {
    selectedIndex = index;
    update();
  }
}
