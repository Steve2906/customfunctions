import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String stringplusstring(
  String string1,
  String string2,
  List<String>? list1,
) {
  var stringlist = list1!.toString();
  if ((stringlist.isNotEmpty == true)) {
    return string1 + ": " + string2 + " " + stringlist;
  } else {
    return string1 + ": " + string2;
  }
}

String stringtonullstring(String? string) {
  return string!;
}

bool dateminusdate(
  DateTime date1,
  DateTime date2,
) {
  var days = date1.difference(date2).inDays;
  if (days >= 2) {
    return true;
  }
  return false;
}

String datetostring() {
  // current date to string
  var now = new DateTime.now();

  var formatter = new DateFormat('M/dd/yyyy');

  String formatted = formatter.format(now);

  return formatted;
}

String jsonpathtostring(dynamic json) {
  return json.toString();
}

bool statusvisibility(
  String role,
  String status,
) {
  if (role == "checker" && status == "Loading") {
    return false;
  }
  if (role == "checker" && status == "New") {
    return false;
  }
  if (role == "checker" && status == "Processing") {
    return false;
  }
  if (role == "checker" && status == "Update Needed") {
    return false;
  }
  if (role == "operator" && status == "Update Needed") {
    return false;
  }
  return true;
}

String? listtostring(List<String>? list) {
  return list.toString();
}

String userid(int numberofitems) {
  return (numberofitems + 1).toString();
}

String truncatedstring(String? url) {
  return url!.substring(url.length - 8);
}

dynamic createjson(
  String? index,
  String? problem,
  String? user,
) {
  var map = {
    "id": null,
    "user": "$user",
    "index": "$index",
    "problem": "$problem"
  };
  print(map);
  return map;
}

dynamic createbody(
  String? id,
  List<dynamic> list,
) {
  print("CreateBody - Done");
  return {"id": id, "photos": list};
}
