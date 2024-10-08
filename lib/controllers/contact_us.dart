// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:effa/helper/dio_helper.dart';
import 'package:effa/helper/http_exeption.dart';
import 'package:effa/models/user/user_data.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as Dio;

import '../models/terms/terms.dart';

class ContactUs_And_ShareLinkController  extends GetxController {
  bool loader = false;
  ShareLinkModel? shareLinkModel;
    UserInfooo? user;
  @override
  void onInit() {
    fetchUserData();
    super.onInit();
  }
  Future<void> contactUs(
    String name,
    String email,
    String subject,
    String message,
  ) async {
    try {
      loader = true;
      update();
      Dio.Response response = await dio().post(
        'contact_us',
        data: Dio.FormData.fromMap({
          'name': name,
          'email': email,
          'subject': subject,
          'message': message,
        }),
      );
      print("contact us == $response");
      if (response.statusCode == 200) {
        loader = false;
        update();
        Get.snackbar(response.statusMessage!, "Done",
            borderRadius: 0,
            showProgressIndicator: false,
            duration: const Duration(seconds: 4));
      }
    } on HttpExeption catch (e) {
      Get.snackbar(e.message, "حاول مره اخري !",
          borderRadius: 0,
          showProgressIndicator: false,
          duration: const Duration(seconds: 4));
    } catch (error) {
      loader = false;
      update();
      print(error);
      throw (error);
    }
  }

    Future<void> fetchUserData() async {
    try {
      loader = true;
      final Dio.Response response = await dio().get(
        'myData',
      );
      user = UserInfooo.fromJson(response.data);
      
      loader = false;
      update();
    } catch (err) {
      loader = false;
      update();
      Get.snackbar('خطأ في الاتصال', "NETWORK_ERR",
          borderRadius: 0, snackPosition: SnackPosition.BOTTOM);
      print("MyProfileController error == ${err.toString()}");
      // ignore: unnecessary_brace_in_string_interps
    }
  }


  Future<ShareLinkModel?> fetchShareLink() async {
    try {
      loader = true;

      Dio.Response response = await dio().get(
        'share_link',
      );
      print("fetch share_link == ${response.data}");
      shareLinkModel =
          ShareLinkModel.fromJson(response as Map<String, dynamic>);
      loader = false;
      update();

      return ShareLinkModel.fromJson(response as Map<String, dynamic>);
    } catch (err) {
      loader = false;
      update();

      print("fetch share_link error ==${err.toString()}");
      // ignore: unnecessary_brace_in_string_interps
    }
    return shareLinkModel;
  }
}
