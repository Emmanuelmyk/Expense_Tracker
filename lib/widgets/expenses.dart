import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';
// import 'package:flutter/widgets.dart';

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
      title: 'Office Desk',
      date: DateTime.now(),
      amount: 20.62355,
      category: Cat.work,
    ),
    Expense(
      title: 'Burger',
      date: DateTime.now(),
      amount: 34.22,
      category: Cat.food,
    ),
    Expense(
      title: 'movies',
      date: DateTime.now(),
      amount: 34.22,
      category: Cat.leisure,
    ),
    Expense(
      title: 'Abuja',
      date: DateTime.now(),
      amount: 34.22,
      category: Cat.travel,
    ),
    Expense(
      title: 'Fried Rice',
      date: DateTime.now(),
      amount: 34.22,
      category: Cat.food,
    ),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        titleTextStyle: const TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
        backgroundColor: const Color.fromARGB(255, 207, 51, 51),
        actions: [
          IconButton(
              onPressed: _openAddExpenseOverlay,
              icon: const Icon(color: Colors.white, Icons.add)),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const Text('The Charts'),
            Expanded(
              child: ExpensesList(expenses: _registeredExpenses),
            )
          ],
        ),
      ),
    );
  }
}
