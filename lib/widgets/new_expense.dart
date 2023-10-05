import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  final _titelController = TextEditingController();

  @override
  void dispose() {
    _titelController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titelController,
            maxLength: 50,
            decoration: InputDecoration(
              label: Text('Title'),
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  print(_titelController.text);
                },
                child: Text('Save Expense'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
