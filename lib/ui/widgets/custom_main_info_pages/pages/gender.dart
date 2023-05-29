import 'package:effa/controllers/basic_pages_controller.dart';
import 'package:effa/helper/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Gender extends StatelessWidget {
  BasicPagesController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Text(
            'ما هو نوع المستخدم',
            style: GoogleFonts.cairo(fontSize: 20.sp),
          ),
        )),
        Padding(
          padding: EdgeInsets.only(
            top: 20.0.h,
          ),
          child: GetBuilder<BasicPagesController>(
            builder: (controller) {
              return Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        controller.choseGender(true,2);
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: controller.isFemale ? basicPink : ligthtGrey,
                            width: 1.3.w,
                          ),
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                        ),
                        elevation: controller.isFemale ? 15 : 0,
                        child: Container(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 15.h,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/image/female.svg'),
                                SizedBox(
                                  height: 15.0.h,
                                ),
                                Text(
                                  'أنثي',
                                  style: GoogleFonts.cairo(
                                    fontSize: 16.0.sp,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0.w,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        controller.choseGender(false,1);
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: controller.pressed && !controller.isFemale
                                  ? basicPink
                                  : ligthtGrey,
                              width: 1.3.w,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                        ),
                        elevation:
                            controller.pressed && !controller.isFemale ? 15 : 0,
                        shadowColor: ligthtGrey,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 15.h,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/image/male.svg'),
                              SizedBox(
                                height: 15.0.h,
                              ),
                              Text(
                                'ذكر',
                                style: GoogleFonts.cairo(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
