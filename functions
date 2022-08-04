# customfunctions
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

double reviews(
  int count,
  int sum,
) {
  // get the average
  double average;
  if (count > 0) {
    average = sum / count;
  }
  return average;
}

int reviewsminus(
  int oldsum,
  int reviewstars,
) {
  // get the average
  int minus;
  {
    minus = oldsum - reviewstars;
  }
  return minus;
}

int cartsum(List<int> cart) {
  return List.from(cart).reduce((a, b) => a + b);
}

List<String> searcharray(
  String field1,
  String field2,
) {
  var string1 = field1.toLowerCase();
  var string2 = field2.toLowerCase();
  var inputString = string1 + " " + string2;
  final list = inputString.split(" ");
  var keywords = [
    " ",
    string1,
    string2,
  ];

  var listIterator = list.iterator;

  while (listIterator.moveNext()) {
    var appendString = "";

    listIterator.current.runes.forEach((int rune) {
      appendString += String.fromCharCode(rune);
      keywords.add(appendString);
    });

    inputString = inputString.replaceAll(listIterator.current.toString(), " ");
  }

  return keywords;
}

int count(List<NotificationsRecord> list) {
  // count list items
  return list.length;
}

int countimage(List<String> list) {
  // count list items
  return list.length;
}

String lowercase(String search) {
  {
    search = search.toLowerCase();
  }
  return search;
}

DateTime changedate(DateTime masterdate) {
  // add new day to date
  DateTime datenow = DateTime.now();
  int day = datenow.day;
  int month = datenow.month;
  int year = datenow.year;
  int hour = masterdate.hour;
  int minutes = masterdate.minute;
  DateTime date = DateTime(year, month, day, hour, minutes);
  return date;
}

List<String> refreshgallery(
  List<String> gallery,
  String image,
) {
  gallery.remove(image);
  gallery.insert(0, image);
  return gallery;
}

int distance(
  LatLng master,
  LatLng user,
) {
  if ((master.latitude == user.latitude) &&
      (master.longitude == user.longitude)) {
    return 1;
  }

  if ((master.latitude == 0) && (master.longitude == 0)) {
    return 1;
  }
  final R = 6371000; // Earth radius in meters
  final o1 = user.latitude / 180 * math.pi;
  final o2 = master.latitude / 180 * math.pi;
  final dLat = (master.latitude - user.latitude) / 180 * math.pi;
  final dLon = (master.longitude - user.longitude) / 180 * math.pi;
  final a = math.sin(dLat / 2) * math.sin(dLat / 2) +
      math.cos(o1) * math.cos(o2) * math.sin((dLon / 2)) * math.sin((dLon / 2));
  final c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));
  final d = R * c;
  return d.round();
}

String listtimestamptostring(List<DateTime> times) {
  final time1 = DateFormat.Hm().format(times.first);
  final time2 = DateFormat.Hm().format(times.last);
  return "$time1 - $time2";
}

String timestamptostring(DateTime times) {
  final time1 = DateFormat.Hm().format(times);
  return time1;
}

DateTime firstitem(List<DateTime> list) {
  return list.first;
}

DateTime lastitem(List<DateTime> list) {
  return list.last;
}

DateTime twotimestamptoone(
  DateTime date,
  DateTime time,
) {
  DateTime newdate = new DateTime(date.year, date.month, date.day, time.hour,
      time.minute, time.second, time.millisecond, time.microsecond);
  return newdate;
}

List<DateTime> timeloop(
  DateTime date,
  DateTime time,
  String hours,
) {
  double hours1 = double.parse(hours);
  double hours2 = hours1 / 0.5;
  hours2.roundToDouble;

  List<DateTime> output = [];
  int x = 0;
  for (int i = 0; hours2 + 1 > i; i++) {
    DateTime newdate = new DateTime(date.year, date.month, date.day, time.hour,
        time.minute, time.second, time.millisecond, time.microsecond);
    DateTime newdate2 = newdate.add(Duration(minutes: 30 * i));
    output.add(newdate2);
  }
  return output;
}

List<DateTime> listaddtolist(
  List<DateTime> list1,
  List<DateTime> list2,
) {
  return list1 + list2;
}

List<String> liststringaddtolist(
  List<String> list1,
  List<String> list2,
) {
  return list1 + list2;
}

List<String> liststringremovefromlist(
  List<String> list1,
  List<String> list2,
) {
  list1.removeWhere((element) => list2.contains(element));

  return list1;
}

String stringplusstring(
  String string1,
  String string2,
) {
  double double1 = double.parse(string1);
  double double2 = double.parse(string2);

  double double3 = double1 + double2;
  return double3.toString();
}

String stringminusstring(
  String string1,
  String string2,
) {
  double double1 = double.parse(string1);
  double double2 = double.parse(string2);

  double double3 = double2 - double1;
  return double3.toString();
}

List<DateTime> timetotimestamp(String time) {
  String hour1 = time.substring(0, 2);
  String hour2 = time.substring(7, 10);
  String min1 = time.substring(3, 5);
  String min2 = time.substring(11, 13);

  int hour1int = int.parse(hour1);
  int hour2int = int.parse(hour2);
  int min1int = int.parse(min1);
  int min2int = int.parse(min2);

  DateTime now = new DateTime.now();

  DateTime date1 =
      new DateTime(now.year, now.month, now.day, hour1int, min1int, 00, 00, 00);
  DateTime date2 =
      new DateTime(now.year, now.month, now.day, hour2int, min2int, 00, 00, 00);

  List<DateTime> output = [];
  output.add(date1);
  output.add(date2);

  return output;
}

List<String> listimestamptoliststring(List<DateTime> timestamps) {
  // list dates to list string
  List<String> list = [];
  for (var i = 0; i < timestamps.length; i++) {
    String string = DateFormat('y-MM-dd H:mm:00.000').format(timestamps[i]);
    list.add(string);
  }
  return list;
}

List<DateTime> liststringtolisttimestamp(List<String> dates) {
  List<DateTime> datestimes = [];
  for (var x = 0; x < dates.length; x++) {
    datestimes.add(DateTime.parse(dates[x]));
  }
  return datestimes;
}

String findandreplace(String string) {
  String newstring = string.replaceAll(",", ".");
  return newstring;
}

bool liststringisempty(List<String> list) {
  return list.isEmpty;
}

List<String> masterdays(
  bool pn,
  String pntime1,
  String pntime2,
  bool vt,
  String vttime1,
  String vttime2,
  bool sr,
  String srtime1,
  String srttime2,
  bool chtv,
  String chtvtime1,
  String chtvtime2,
  bool pt,
  String pttime1,
  String pttime2,
  bool sb,
  String sbtime1,
  String sbtime2,
  bool vosk,
  String vosktime1,
  String vosktime2,
) {
  // Add your function code here!

  List<String> output = [];
  if (pn == true) {
    String pntime = "Понедельник - $pntime1 - $pntime2";
    output.add(pntime);
  }
  if (vt == true) {
    String vttime = "Вторник - $vttime1 - $vttime2";
    output.add(vttime);
  }
  if (sr == true) {
    String srtime = "Среда - $srtime1 - $srttime2";
    output.add(srtime);
  }
  if (chtv == true) {
    String chtvtime = "Четверг - $chtvtime1 - $chtvtime2";
    output.add(chtvtime);
  }
  if (pt == true) {
    String pttime = "Пятница - $pttime1 - $pttime2";
    output.add(pttime);
  }
  if (sb == true) {
    String sbtime = "Суббота - $sbtime1 - $sbtime2";
    output.add(sbtime);
  }
  if (vosk == true) {
    String vosktime = "Воскресенье - $vosktime1 - $vosktime2";
    output.add(vosktime);
  }
  return output;
}

String timestamptoday(DateTime timestamp) {
  String day = DateFormat('EEEE').format(timestamp);
  if (day == "Monday") {
    day = "Понедельник";
  }
  if (day == "Tuesday") {
    day = "Вторник";
  }
  if (day == "Wednesday") {
    day = "Среда";
  }
  if (day == "Thursday") {
    day = "Четверг";
  }
  if (day == "Friday") {
    day = "Пятница";
  }
  if (day == "Saturday") {
    day = "Суббота";
  }
  if (day == "Sunday") {
    day = "Воскресенье";
  }
  return day;
}

List<String> listtruncated(List<String> dates) {
  List<String> output = [];
  int count = dates.length;

  if ((dates.first.length < 16)) {
    return dates;
  }

  for (int i = 0; count > i; i++) {
    int len = dates.elementAt(i).length;
    String newdate2 = dates.elementAt(i).substring(0, len - 16);
    output.add(newdate2);
  }
  return output;
}

String finddatefrommasterdays(
  List<String> days,
  String oneday,
  String defaultday,
) {
  List<String> output = [];
  int count = days.length;

  if ((days.first.length < 16)) {
    return defaultday;
  }

  for (int i = 0; count > i; i++) {
    int len = days.elementAt(i).length;
    String newdate2 = days.elementAt(i).substring(0, len - 16);
    output.add(newdate2);
  }

  int index = output.indexOf(oneday);
  return days.elementAt(index);
}

DateTime stringtotimestamp1(String string) {
  if ((string.length == 5)) {
    String hour1 = string.substring(0, 2);
    String min1 = string.substring(3, 5);

    int hour1int = int.parse(hour1);
    int min1int = int.parse(min1);
    DateTime now = new DateTime.now();
    DateTime date1 = new DateTime(
        now.year, now.month, now.day, hour1int, min1int, 00, 00, 00);
    return date1;
  }
  int len = string.length;
  String string1 = string.substring(len - 13);

  String hour1 = string1.substring(0, 2);
  String min1 = string1.substring(3, 5);

  int hour1int = int.parse(hour1);
  int min1int = int.parse(min1);

  DateTime now = new DateTime.now();

  DateTime date1 =
      new DateTime(now.year, now.month, now.day, hour1int, min1int, 00, 00, 00);

  return date1;
}

DateTime stringtotimestamp2(String string) {
  if ((string.length == 5)) {
    String hour1 = string.substring(0, 2);
    String min1 = string.substring(3, 5);

    int hour1int = int.parse(hour1);
    int min1int = int.parse(min1);
    DateTime now = new DateTime.now();
    DateTime date1 = new DateTime(
        now.year, now.month, now.day, hour1int, min1int, 00, 00, 00);
    return date1;
  }

  int len = string.length;
  String string1 = string.substring(len - 13);

  String hour1 = string1.substring(7, 10);
  String min1 = string1.substring(11, 13);

  int hour1int = int.parse(hour1);
  int min1int = int.parse(min1);

  DateTime now = new DateTime.now();

  DateTime date1 =
      new DateTime(now.year, now.month, now.day, hour1int, min1int, 00, 00, 00);

  return date1;
}

String defaultday(DateTime timestamp) {
  String hour = timestamp.hour.toString();
  String min = timestamp.minute.toString();
  if ((hour.length == 1)) {
    hour = "0$hour";
  }
  if ((min.length == 1)) {
    min = "0$min";
  }
  return "$hour:$min";
}

String separatestringlist(List<DocumentReference> services) {
  return "2";
}

double masterhour(double hour) {
  if (hour == null) {
    return 24;
  }
  if (hour == 0) {
    return 24;
  }
  return hour;
}

int timeminustime(
  DateTime time1,
  DateTime time2,
) {
  final difference = time2.difference(time1);
  int difference1 = difference.inHours;
  return difference1;
}

List<String> liststringminusoneplusone(
  List<String> listdefault,
  List<String> list1,
  List<String> list2,
) {
  listdefault.removeWhere((element) => list1.contains(element));
  List<String> list3 = listdefault + list2;

  return list3;
}

List<String> listpluslistminusone(
  List<String> masterdates,
  List<String> orderdates,
) {
  String one = orderdates.first;
  masterdates.removeWhere((element) => orderdates.contains(element));
  masterdates.add(one);
  return masterdates;
}
