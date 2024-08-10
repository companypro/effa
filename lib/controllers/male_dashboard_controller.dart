// ignore_for_file: library_prefixes

import 'package:effa/ui/screens/account_setting/account_settings.dart';
import 'package:effa/ui/screens/filter/filter.dart';
import 'package:effa/ui/screens/home/home.dart';
import 'package:effa/ui/screens/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:effa/helper/dio_helper.dart';
import 'package:dio/dio.dart' as Dio;
import 'package:get_storage/get_storage.dart';
import '../models/user/user_data.dart';
import '../ui/screens/auth/login.dart';

class MaleDashboardController extends GetxController {
  @override
  void onInit() {
    fetchUserData();
    super.onInit();
  }

  UserInfooo? user;

  List<ImagesUser> userImages = [];

  List<String> interests = [];

  List<Question> family = [];

  List<Question> study = [];

  List<Question> relegion = [];

  List<Question> personal = [];

  int? totalDots = 1;
  String? aboutYou;
  String? aboutPartner;
  Future<void> fetchUserData() async {
    try {
      final Dio.Response response = await dio().get(
        'myData',
      );
      print("MaleDashboardController response == ${response.data}");
      if (response.statusCode == 200) {
        //  user = UserInfooo.fromJson(response.data);
        user = UserInfooo.fromJson(response.data);
        userImages = user!.images!;
        personal = user!.categories![0].questions!;
        relegion = user!.categories![1].questions!;
        study = user!.categories![2].questions!;
        family = user!.categories![3].questions!;
        interests = user!.interests!;
        aboutYou = user!.user!.aboutYou ?? '';
        aboutPartner = user!.user!.aboutPartner ?? '';
        update();
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
      final Dio.Response response = await dio().post('general/logout',
          queryParameters: {'user_id': user!.user!.id!});
      print("user_id ${response.data}");
      GetStorage storage = GetStorage();

      if (response.statusCode == 200) {
        storage.erase();
        Get.offAll(() => LoginPage(), //next page class
            duration: const Duration(
                milliseconds: 400), //duration of transitions, default 1 sec
            transition: Transition.leftToRight //transition effect
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
    if(user != null){   selectedIndex = index;
    update();}
  }
}
