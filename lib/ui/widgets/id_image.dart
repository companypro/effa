import 'dart:io';
import 'package:effa/helper/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class UploadID extends StatefulWidget  {
  UploadID(
      {Key? key,
        required this.myFile,
        required this.press,
        required this.txt,
        required this.myWidget,
        required this.isImg1,
        required this.isImg2,
        required this.isImg3,
        required this.context,
        required this.isFileChanged,
      })
      : super(key: key);
  ValueChanged<File> isFileChanged;
  File myFile;
  bool press;
  String txt;
  Widget myWidget;
  bool isImg1;
  bool isImg2;
  bool isImg3;
  BuildContext context;

  static bool isUploadedImg1 = false;
  static bool isUploadedImg2 = false;
  static bool isUploadedImg3 = false;

  @override
  State<UploadID> createState() => _UploadIDState();
}

class _UploadIDState extends State<UploadID> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 113.h,
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(0, 20.h, 0, 10.h),
          padding: EdgeInsets.only(bottom: 10.h),
          decoration: BoxDecoration(
            border: Border.all(color: basicPink, width: 1.w),
            borderRadius: BorderRadius.circular(10),
            shape: BoxShape.rectangle,
          ),
          child: TextButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 200.0.h,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(
                          horizontal: 20.w,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.topRight,
                              child: Text(
                                ":اختر صورة",
                                style: GoogleFonts.cairo(
                                  fontSize: 20.0.sp,
                                  color: basicPink
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Directionality(
                              textDirection: TextDirection.rtl,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    TextButton.icon(
                                      icon: const Icon(Icons.image,color: basicPink,),
                                      onPressed: () async {
                                        try {
                                          final pickedImage =
                                          await ImagePicker().pickImage(
                                              source: ImageSource.gallery);

                                          final pickedImageFile =
                                          File(pickedImage!.path);

                                          setState(() {
                                            widget.myFile = pickedImageFile;
                                            widget.press = true;
                                            widget.isFileChanged(widget.myFile);
                                            if (widget.isImg1 == true) {
                                              UploadID.isUploadedImg1 = true;
                                            }
                                            if (widget.isImg2 == true) {
                                              UploadID.isUploadedImg2 = true;
                                            }
                                            if (widget.isImg3 == true) {
                                              UploadID.isUploadedImg3 = true;
                                            }
                                            Navigator.pop(context);
                                          });
                                        } on PlatformException catch (e) {
                                          // print("Failed to Pick Image :$e");
                                        }
                                      },
                                      label: Text(
                                          "الهاتف",
                                        style: GoogleFonts.cairo(
                                            fontSize: 20.0.sp,
                                            color: Colors.black
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    TextButton.icon(
                                      icon: const Icon(Icons.camera,color: basicPink,),
                                      onPressed: () async {
                                        try {
                                          final pickedImagec =
                                          await ImagePicker().pickImage(
                                              source: ImageSource.camera);

                                          final pickedImageFilec =
                                          File(pickedImagec!.path);
                                          setState(() {
                                            // widget.press = false;
                                            widget.myFile = pickedImageFilec;

                                            widget.press = true;
                                            if (widget.isImg1 == true) {
                                              UploadID.isUploadedImg1 = true;
                                            }

                                            if (widget.isImg2 == true) {
                                              UploadID.isUploadedImg2 = true;
                                            }

                                            if (widget.isImg3 == true) {
                                              UploadID.isUploadedImg3 = true;
                                            }
                                            Navigator.pop(context);

                                          });
                                        } on PlatformException catch (e) {
                                          // print("Failed to Pick Image :$e");
                                        }
                                      },
                                      label: Text(
                                          "الكاميرا",
                                        style: GoogleFonts.cairo(
                                            fontSize: 20.0.sp,
                                            color: Colors.black
                                        ),
                                      ),
                                    ),
                                  ]),
                            )
                          ],
                        ),
                      );
                    });
              },
              child: SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: widget.myFile != null && (widget.press)
                      ? Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Image.file(
                      widget.myFile,
                      fit: BoxFit.fill,
                    ),
                  )
                      : widget.myWidget)),
        ),
        Positioned(
            right: 20.w,
            top: 12.h,
            child: Container(
              padding: EdgeInsets.only(bottom: 0.h, left: 10.w, right: 10.w),
              color: light,
              child: Text(
                widget.txt,
                style: GoogleFonts.cairo(color: basicPink, fontSize: 12.sp),
              ),
            )),
      ],
    );
  }
}
