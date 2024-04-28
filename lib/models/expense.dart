import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();
const uuid = Uuid();

enum Cat { food, travel, leisure, work }

const categoryIcons = {
  Cat.food: Icons.lunch_dining,
  Cat.travel: Icons.flight_takeoff,
  Cat.leisure: Icons.movie,
  Cat.work: Icons.work,
};

class Expense {
  Expense({
    required this.title,
    required this.date,
    required this.amount,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Cat category;

  String get formattedDAte {
    return formatter.format(date);
  }
}
