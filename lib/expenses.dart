import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter course',
      date: DateTime.now(),
      amount: 20.22,
      category: Category.work,
    ),
    Expense(
      title: 'movies',
      date: DateTime.now(),
      amount: 34.22,
      category: Category.leisure,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('App bar'),
            Text('charts'),
            Text('List of expenses'),
          ],
        ),
      ),
    );
  }
}
