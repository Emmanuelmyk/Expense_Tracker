import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/widgets.dart';

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
      amount: 20.62355,
      category: Category.work,
    ),
    Expense(
      title: 'movies',
      date: DateTime.now(),
      amount: 34.22,
      category: Category.leisure,
    ),
    Expense(
      title: 'movies',
      date: DateTime.now(),
      amount: 34.22,
      category: Category.leisure,
    ),
    Expense(
      title: 'movies',
      date: DateTime.now(),
      amount: 34.22,
      category: Category.food,
    ),
    Expense(
      title: 'movies',
      date: DateTime.now(),
      amount: 34.22,
      category: Category.travel,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // Toolbar with the Add Button => Row()
            const Text('App bar'),
            const Text('charts'),
            Expanded(
              child: ExpensesList(expenses: _registeredExpenses),
            )
          ],
        ),
      ),
    );
  }
}
