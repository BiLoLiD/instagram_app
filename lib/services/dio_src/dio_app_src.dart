import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioSrc {
  static var dio = Dio(
    BaseOptions(
        baseUrl: 'https://fcm.googleapis.com/fcm/',
        connectTimeout: 5000,
        receiveTimeout: 5000,
        headers: {
          'Content-Type': 'application/json',
          'Authorization':
              'AAAA3D5kgrk:APA91bEFv1oJ5_wF_zyM9ZXpKBzX2VzbPjNWqlJrpHlKitX8v2CzUWbsdgcv4jIjV6LcbQm6mu5eavyXU_OWEjlp5guvoB8x8tHgRlo6ZdjaLv7NJ3ihsu_s5R-YJ3RFWf6aUbpWUnsX'
        }),
  );

  static void sendNotification(
      {required String? title,
      required String? subtitle,
      required String? token}) async {
    try {
      await dio.postUri(Uri.tryParse('send')!, data: {
        'priority': 'high',
        'data': <String, dynamic>{
          'click_action': 'FLUTTER_NOTIFICATON_CLICK',
          'status': 'done',
          'body': subtitle!,
          'title': title,
        },
        'notification': <String, dynamic>{'title': title, 'body': subtitle},
        'to': token
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
