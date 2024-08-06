import 'dart:convert';

UserInfooo welcomeFromJson(String str) => UserInfooo.fromJson(json.decode(str));

String welcomeToJson(UserInfooo data) => json.encode(data.toJson());

// class UserInfooo {
//   UserInfooo({
//     this.user,
//     this.images,
//     this.categories,
//     this.socialSituation,
//     this.job,
//     this.education,
//     this.nationality,
//     this.address,
//     this.interests,
//   });
//
//   UserDataLogin? user;
//   List<ImagesUser>? images;
//   List<Category>? categories;
//   String? socialSituation;
//   String? job;
//   String? education;
//   String? nationality;
//   String? address;
//   List<String>? interests;
//
//   factory UserInfooo.fromJson(Map<String, dynamic> json) => UserInfooo(
//         user: UserDataLogin.fromJson(json["user"]),
//         images: List<ImagesUser>.from(
//             json["images"].map((x) => ImagesUser.fromJson(x))),
//         categories: List<Category>.from(
//             json["categories"].map((x) => Category.fromJson(x))),
//         socialSituation: json["SocialSituation"],
//         job: json["job"],
//         education: json["education"],
//         nationality: json["nationality"],
//         address: json["address"],
//         interests: List<String>.from(json["interests"].map((x) => x)),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "user": user!.toJson(),
//         "images": List<dynamic>.from(images!.map((x) => x.toJson())),
//         "categories": List<dynamic>.from(categories!.map((x) => x.toJson())),
//         "SocialSituation": socialSituation,
//         "job": job,
//         "education": education,
//         "nationality": nationality,
//         "address": address,
//         "interests": List<dynamic>.from(interests!.map((x) => x)),
//       };
// }

// class Category {
//   Category({
//     this.id,
//     this.name,
//     this.info,
//     this.isActive,
//     this.reId,
//     this.createdAt,
//     this.updatedAt,
//     this.questions,
//   });
//
//   int? id;
//   String? name;
//   dynamic info;
//   int? isActive;
//   int? reId;
//   DateTime? createdAt;
//   DateTime? updatedAt;
//   List<Question>? questions;
//
//   factory Category.fromJson(Map<String, dynamic> json) => Category(
//         id: json["id"],
//         name: json["name"],
//         info: json["info"],
//         isActive: json["is_active"],
//         reId: json["re_id"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//         questions: List<Question>.from(
//             json["questions"].map((x) => Question.fromJson(x))),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "info": info,
//         "is_active": isActive,
//         "re_id": reId,
//         "created_at": createdAt!.toIso8601String(),
//         "updated_at": updatedAt!.toIso8601String(),
//         "questions": List<dynamic>.from(questions!.map((x) => x.toJson())),
//       };
// }
//
// class Question {
//   Question({
//     this.id,
//     this.content,
//     this.info,
//     this.isActive,
//     this.type,
//     this.gender,
//     this.order,
//     this.categoryId,
//     this.ansId,
//     this.quId,
//     this.level,
//     this.isSkipable,
//     this.regId,
//     this.createdAt,
//     this.updatedAt,
//     this.isAnswer,
//     this.answerContent,
//   });
//
//   int? id;
//   String? content;
//   dynamic info;
//   int? isActive;
//   int? type;
//   int? gender;
//   int? order;
//   int? categoryId;
//   int? ansId;
//   int? quId;
//   int? level;
//   int? isSkipable;
//   int? regId;
//   DateTime? createdAt;
//   DateTime? updatedAt;
//   int? isAnswer;
//   String? answerContent;
//
//   factory Question.fromJson(Map<String, dynamic> json) => Question(
//         id: json["id"],
//         content: json["content"],
//         info: json["info"],
//         isActive: json["is_active"],
//         type: json["type"],
//         gender: json["gender"],
//         order: json["order"],
//         categoryId: json["category_id"],
//         ansId: json["ans_id"],
//         quId: json["qu_id"],
//         level: json["level"],
//         isSkipable: json["is_skipable"],
//         regId: json["reg_id"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//         isAnswer: json["is_answer"],
//         answerContent: json["answer_content"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "content": content,
//         "info": info,
//         "is_active": isActive,
//         "type": type,
//         "gender": gender,
//         "order": order,
//         "category_id": categoryId,
//         "ans_id": ansId,
//         "qu_id": quId,
//         "level": level,
//         "is_skipable": isSkipable,
//         "reg_id": regId,
//         "created_at": createdAt!.toIso8601String(),
//         "updated_at": updatedAt!.toIso8601String(),
//         "is_answer": isAnswer,
//         "answer_content": answerContent,
//       };
// }
//
// class ImagesUser {
//   ImagesUser({
//     this.id,
//     this.image,
//     this.userId,
//     this.createdAt,
//     this.updatedAt,
//   });
//
//   int? id;
//   String? image;
//   int? userId;
//   DateTime? createdAt;
//   DateTime? updatedAt;
//
//   factory ImagesUser.fromJson(Map<String, dynamic> json) => ImagesUser(
//         id: json["id"],
//         image: json["image"],
//         userId: json["user_id"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "image": image,
//         "user_id": userId,
//         "created_at": createdAt!.toIso8601String(),
//         "updated_at": updatedAt!.toIso8601String(),
//       };
// }
//
// class UserDataLogin {
//   UserDataLogin({
//     this.id,
//     this.frName,
//     this.lsName,
//     this.faName,
//     this.idNumber,
//     this.image,
//     this.isLogin,
//     this.isComplet,
//     this.gender,
//     this.isBlock,
//     this.isWait,
//     this.phoneCode,
//     this.phone,
//     this.countryId,
//     this.country,
//     this.isNew,
//     this.govId,
//     this.cityId,
//     this.lastLoginAt,
//     this.religionId,
//     this.birthDate,
//     this.slug,
//     this.identityFace,
//     this.identityBack,
//     this.passportImage,
//     this.isApproved,
//     this.rejectResson,
//     this.aboutYou,
//     this.isAcceptTerms,
//     this.aboutPartner,
//     this.createdAt,
//     this.updatedAt,
//     this.points,
//     this.age,
//     this.fullName,
//   });
//
//   int? id;
//   String? frName;
//   String? lsName;
//   dynamic faName;
//   dynamic idNumber;
//   String? image;
//   int? isLogin;
//   int? isComplet;
//   int? gender;
//   int? isBlock;
//   int? isWait;
//   dynamic phoneCode;
//   String? phone;
//   int? countryId;
//   String? country;
//   int? isNew;
//   dynamic govId;
//   dynamic cityId;
//   dynamic lastLoginAt;
//   int? religionId;
//   DateTime? birthDate;
//   String? slug;
//   String? identityFace;
//   String? identityBack;
//   String? passportImage;
//   int? isApproved;
//   dynamic rejectResson;
//   String? aboutYou;
//   int? isAcceptTerms;
//   String? aboutPartner;
//   DateTime? createdAt;
//   DateTime? updatedAt;
//   int? points;
//   int? age;
//   String? fullName;
//
//   factory UserDataLogin.fromJson(Map<String, dynamic> json) => UserDataLogin(
//         id: json["id"],
//         frName: json["frName"],
//         lsName: json["lsName"],
//         faName: json["FaName"],
//         idNumber: json["idNumber"],
//         image: json["image"],
//         isLogin: json["is_login"],
//         isComplet: json["is_complet"],
//         gender: json["gender"],
//         isBlock: json["is_block"],
//         isWait: json["is_wait"],
//         phoneCode: json["phone_Code"],
//         phone: json["phone"],
//         countryId: json["country_id"],
//         country: json["country"],
//         isNew: json["is_new"],
//         govId: json["gov_id"],
//         cityId: json["city_id"],
//         lastLoginAt: json["lastLoginAt"],
//         religionId: json["religion_id"],
//         // birthDate: DateTime.parse(json["birth_date"]),
//         slug: json["slug"],
//         identityFace: json["identity_face"],
//         identityBack: json["identity_back"],
//         passportImage: json["passport_image"],
//         isApproved: json["is_approved"],
//         rejectResson: json["reject_resson"],
//         aboutYou: json["about_you"],
//         isAcceptTerms: json["is_accept_terms"],
//         aboutPartner: json["about_partner"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//         points: json["points"],
//         age: json["age"],
//         fullName: json["full_name"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "frName": frName,
//         "lsName": lsName,
//         "FaName": faName,
//         "idNumber": idNumber,
//         "image": image,
//         "is_login": isLogin,
//         "is_complet": isComplet,
//         "gender": gender,
//         "is_block": isBlock,
//         "is_wait": isWait,
//         "phone_Code": phoneCode,
//         "phone": phone,
//         "country_id": countryId,
//         "country": country,
//         "is_new": isNew,
//         "gov_id": govId,
//         "city_id": cityId,
//         "lastLoginAt": lastLoginAt,
//         "religion_id": religionId,
//         "birth_date":
//             "${birthDate!.year.toString().padLeft(4, '0')}-${birthDate!.month.toString().padLeft(2, '0')}-${birthDate!.day.toString().padLeft(2, '0')}",
//         "slug": slug,
//         "identity_face": identityFace,
//         "identity_back": identityBack,
//         "passport_image": passportImage,
//         "is_approved": isApproved,
//         "reject_resson": rejectResson,
//         "about_you": aboutYou,
//         "is_accept_terms": isAcceptTerms,
//         "about_partner": aboutPartner,
//         "created_at": createdAt!.toIso8601String(),
//         "updated_at": updatedAt!.toIso8601String(),
//         "points": points,
//         "age": age,
//         "full_name": fullName,
//       };
// }



class UserInfooo {
  UserDataLogin? user;
  List<ImagesUser>? images;
  List<Categories>? categories;
  String? socialSituation;
  String? job;
  String? education;
  String? nationality;
  String? address;
  List<String>? interests;

  UserInfooo(
      {this.user,
        this.images,
        this.categories,
        this.socialSituation,
        this.job,
        this.education,
        this.nationality,
        this.address,
        this.interests});

  UserInfooo.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new UserDataLogin.fromJson(json['user']) : null;
    if (json['images'] != null) {
      images = <ImagesUser>[];
      json['images'].forEach((v) {
        images!.add(new ImagesUser.fromJson(v));
      });
    }
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(new Categories.fromJson(v));
      });
    }
    socialSituation = json['SocialSituation'];
    job = json['job'];
    education = json['education'];
    nationality = json['nationality'];
    address = json['address'];
    interests = json['interests'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    if (this.images != null) {
      data['images'] = this.images!.map((v) => v.toJson()).toList();
    }
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    data['SocialSituation'] = this.socialSituation;
    data['job'] = this.job;
    data['education'] = this.education;
    data['nationality'] = this.nationality;
    data['address'] = this.address;
    data['interests'] = this.interests;
    return data;
  }
}

class UserDataLogin {
  int? id;
  String? frName;
  String? lsName;
  dynamic? faName;
  dynamic? idNumber;
  dynamic? image;
  int? isLogin;
  int? isComplet;
  int? gender;
  int? isBlock;
  int? isWait;
  dynamic? phoneCode;
  String? phone;
  int? countryId;
  dynamic? country;
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
  int? age;
  String? fullName;

  UserDataLogin(
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
        this.age,
        this.fullName});

  UserDataLogin.fromJson(Map<String, dynamic> json) {
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
    age = json['age'];
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
    data['age'] = this.age;
    data['full_name'] = this.fullName;
    return data;
  }
}

class ImagesUser {
  int? id;
  String? image;
  int? userId;
  String? createdAt;
  String? updatedAt;

  ImagesUser({this.id, this.image, this.userId, this.createdAt, this.updatedAt});

  ImagesUser.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    userId = json['user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['user_id'] = this.userId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Categories {
  int? id;
  String? name;
  dynamic? info;
  int? isActive;
  int? reId;
  String? createdAt;
  String? updatedAt;
  List<Question>? questions;

  Categories(
      {this.id,
        this.name,
        this.info,
        this.isActive,
        this.reId,
        this.createdAt,
        this.updatedAt,
        this.questions});

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    info = json['info'];
    isActive = json['is_active'];
    reId = json['re_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['questions'] != null) {
      questions = <Question>[];
      json['questions'].forEach((v) {
        questions!.add(new Question.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['info'] = this.info;
    data['is_active'] = this.isActive;
    data['re_id'] = this.reId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.questions != null) {
      data['questions'] = this.questions!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Question {
  int? id;
  String? content;
  dynamic? info;
  int? isActive;
  int? type;
  int? gender;
  int? order;
  int? categoryId;
  int? ansId;
  int? ansId2;
  int? ansId3;
  int? ansId4;
  int? ansId5;
  int? quId;
  int? level;
  int? isSkipable;
  int? regId;
  String? createdAt;
  String? updatedAt;
  int? isAnswer;
  dynamic? answerContent;

  Question(
      {this.id,
        this.content,
        this.info,
        this.isActive,
        this.type,
        this.gender,
        this.order,
        this.categoryId,
        this.ansId,
        this.ansId2,
        this.ansId3,
        this.ansId4,
        this.ansId5,
        this.quId,
        this.level,
        this.isSkipable,
        this.regId,
        this.createdAt,
        this.updatedAt,
        this.isAnswer,
        this.answerContent});

  Question.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    content = json['content'];
    info = json['info'];
    isActive = json['is_active'];
    type = json['type'];
    gender = json['gender'];
    order = json['order'];
    categoryId = json['category_id'];
    ansId = json['ans_id'];
    ansId2 = json['ans_id2'];
    ansId3 = json['ans_id3'];
    ansId4 = json['ans_id4'];
    ansId5 = json['ans_id5'];
    quId = json['qu_id'];
    level = json['level'];
    isSkipable = json['is_skipable'];
    regId = json['reg_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    isAnswer = json['is_answer'];
    answerContent = json['answer_content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['content'] = this.content;
    data['info'] = this.info;
    data['is_active'] = this.isActive;
    data['type'] = this.type;
    data['gender'] = this.gender;
    data['order'] = this.order;
    data['category_id'] = this.categoryId;
    data['ans_id'] = this.ansId;
    data['ans_id2'] = this.ansId2;
    data['ans_id3'] = this.ansId3;
    data['ans_id4'] = this.ansId4;
    data['ans_id5'] = this.ansId5;
    data['qu_id'] = this.quId;
    data['level'] = this.level;
    data['is_skipable'] = this.isSkipable;
    data['reg_id'] = this.regId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['is_answer'] = this.isAnswer;
    data['answer_content'] = this.answerContent;
    return data;
  }
}