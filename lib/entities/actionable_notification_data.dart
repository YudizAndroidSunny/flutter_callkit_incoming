import 'dart:convert';

class ActionableNotificationData {
  String? logo;
  String? visitorId;
  String? currentUserId;
  String? visitorName;
  String? visitorImage;
  String? currentUserName;
  String? from;
  String? purpose;
  String? comments;
  String? message;

  ActionableNotificationData({
    this.logo,
    this.visitorId,
    this.currentUserId,
    this.visitorName,
    this.visitorImage,
    this.currentUserName,
    this.from,
    this.purpose,
    this.comments,
    this.message,
  });

  factory ActionableNotificationData.fromRawJson(String str) => ActionableNotificationData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ActionableNotificationData.fromJson(Map<String, dynamic> json) => ActionableNotificationData(
    visitorId: json["visitor_id"],
    currentUserId: json["current_user_id"],
    visitorName: json["visitor_name"],
    currentUserName: json["current_user_name"],
    from: json["from"],
    purpose: json["purpose"],
    comments: json["comments"],
    message: json["message"],
    logo: json["logo"],
    visitorImage: json["visitor_image"],
  );

  Map<String, dynamic> toJson() => {
    "visitor_id": visitorId,
    "current_user_id": currentUserId,
    "visitor_name": visitorName,
    "current_user_name": currentUserName,
    "from": from,
    "purpose": purpose,
    "comments": comments,
    "message": message,
    "logo": logo,
    "visitor_image": visitorImage,
  };
}
