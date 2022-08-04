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

String findrowinstringlist(
  List<String> tests,
  int testnumber,
) {
  if (testnumber >= tests.length) {
    return null;
  }
  return tests.elementAt(testnumber);
}

double ratingbarfromint(int points) {
  return points.toDouble() / 100;
}

String randomint8095() {
  List<int> numbers = [
    80,
    81,
    82,
    83,
    84,
    85,
    86,
    87,
    88,
    89,
    90,
    91,
    92,
    93,
    94,
    95
  ];
  numbers.shuffle();
  return (numbers.first).toString();

  // Add your function code here!
}

bool textcontains(
  String tagsSkinType,
  String userskin,
) {
  final contains = tagsSkinType.contains(userskin);
  return contains;
}

bool listisempty(List<double> grades) {
  return grades.isNotEmpty;
}

double rating(
  List<double> grades,
  double gradescount,
) {
  int count = grades.length;
  return gradescount / count;
}
