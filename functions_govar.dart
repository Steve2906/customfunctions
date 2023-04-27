import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/firebase_auth/auth_util.dart';

DateTime currentdateplus1(
  int index,
  DateTime currentdate,
) {
  return currentdate.add(Duration(days: index));
}

DateTime changedate(DateTime masterdate) {
  DateTime datenow = DateTime.now();
  int day = datenow.day;
  int month = datenow.month;
  int year = datenow.year;
  int hour = masterdate.hour;
  int minutes = masterdate.minute;
  DateTime date = DateTime(year, month, day, hour, minutes);
  return date;
}

String randomstring(List<String> questions) {
  var list = (questions..shuffle()).first;

  return list;
}

bool listempty(List<String> list) {
  return list.isEmpty;
}

String accounttype(
  bool? paid,
  bool? manualpremium,
) {
  if ((paid == true)) {
    return "Premium account";
  }
  if ((manualpremium == true)) {
    return "Premium account";
  } else {
    return "Free account";
  }
}

List<String>? imagelistfromstring(String? string) {
  return string!.split(",");
}

bool? meetingstartorjoin(
  DateTime? timefrom,
  DateTime? currenttime,
) {
  if (currenttime!.isBefore(timefrom!.toUtc())) {
    return false;
  } else {
    return true;
  }
}

String? statusmapvalues(
  dynamic statusMap,
  int? valueindex,
) {
  return statusMap.values.elementAt(valueindex).toString();
}

DateTime? dateplusdays(
  DateTime? currentdate,
  int? days,
) {
  return currentdate!.add(Duration(days: days!));
}
