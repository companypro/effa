// To parse this JSON data, do
//
//     final UserAuth = UserAuthFromJson(jsonString);

import 'dart:convert';

UserAuth UserAuthFromJson(String str) => UserAuth.fromJson(json.decode(str));

String UserAuthToJson(UserAuth data) => json.encode(data.toJson());

class UserAuth {
  String? accessToken;
  User? user;

  UserAuth({this.accessToken, this.user});

  UserAuth.fromJson(Map<String, dynamic> json) {
    accessToken = json['accessToken'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['accessToken'] = this.accessToken;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? frName;
  String? lsName;
  String? faName;
  dynamic? idNumber;
  dynamic? image;
  int? isLogin;
  int? isComplet;
  int? gender;
  int? isBlock;
  int? isWait;
  String? phoneCode;
  String? phone;
  dynamic? countryId;
  String? country;
  int? isNew;
  dynamic? govId;
  dynamic? cityId;
  String? userCode;
  dynamic? lastLoginAt;
  int? religionId;
  String? birthDate;
  String? slug;
  dynamic? identityFace;
  dynamic? identityBack;
  dynamic? passportImage;
  int? isApproved;
  dynamic? rejectResson;
  String? aboutYou;
  int? isAcceptTerms;
  String? aboutPartner;
  String? createdAt;
  String? updatedAt;
  int? points;
  String? fullName;

  User(
      {this.id,
        this.frName,
        this.lsName,
        this.faName,
        this.idNumber,
        this.image,
        this.isLogin,
        this.isComplet,
        this.gender,
        this.isBlock,
        this.isWait,
        this.phoneCode,
        this.phone,
        this.countryId,
        this.country,
        this.isNew,
        this.govId,
        this.cityId,
        this.userCode,
        this.lastLoginAt,
        this.religionId,
        this.birthDate,
        this.slug,
        this.identityFace,
        this.identityBack,
        this.passportImage,
        this.isApproved,
        this.rejectResson,
        this.aboutYou,
        this.isAcceptTerms,
        this.aboutPartner,
        this.createdAt,
        this.updatedAt,
        this.points,
        this.fullName});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    frName = json['frName'];
    lsName = json['lsName'];
    faName = json['FaName'];
    idNumber = json['idNumber'];
    image = json['image'];
    isLogin = json['is_login'];
    isComplet = json['is_complet'];
    gender = json['gender'];
    isBlock = json['is_block'];
    isWait = json['is_wait'];
    phoneCode = json['phone_Code'];
    phone = json['phone'];
    countryId = json['country_id'];
    country = json['country'];
    isNew = json['is_new'];
    govId = json['gov_id'];
    cityId = json['city_id'];
    userCode = json['user_code'];
    lastLoginAt = json['lastLoginAt'];
    religionId = json['religion_id'];
    birthDate = json['birth_date'];
    slug = json['slug'];
    identityFace = json['identity_face'];
    identityBack = json['identity_back'];
    passportImage = json['passport_image'];
    isApproved = json['is_approved'];
    rejectResson = json['reject_resson'];
    aboutYou = json['about_you'];
    isAcceptTerms = json['is_accept_terms'];
    aboutPartner = json['about_partner'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    points = json['points'];
    fullName = json['full_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['frName'] = this.frName;
    data['lsName'] = this.lsName;
    data['FaName'] = this.faName;
    data['idNumber'] = this.idNumber;
    data['image'] = this.image;
    data['is_login'] = this.isLogin;
    data['is_complet'] = this.isComplet;
    data['gender'] = this.gender;
    data['is_block'] = this.isBlock;
    data['is_wait'] = this.isWait;
    data['phone_Code'] = this.phoneCode;
    data['phone'] = this.phone;
    data['country_id'] = this.countryId;
    data['country'] = this.country;
    data['is_new'] = this.isNew;
    data['gov_id'] = this.govId;
    data['city_id'] = this.cityId;
    data['user_code'] = this.userCode;
    data['lastLoginAt'] = this.lastLoginAt;
    data['religion_id'] = this.religionId;
    data['birth_date'] = this.birthDate;
    data['slug'] = this.slug;
    data['identity_face'] = this.identityFace;
    data['identity_back'] = this.identityBack;
    data['passport_image'] = this.passportImage;
    data['is_approved'] = this.isApproved;
    data['reject_resson'] = this.rejectResson;
    data['about_you'] = this.aboutYou;
    data['is_accept_terms'] = this.isAcceptTerms;
    data['about_partner'] = this.aboutPartner;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['points'] = this.points;
    data['full_name'] = this.fullName;
    return data;
  }
}
