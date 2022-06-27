import 'package:flutter/material.dart';

class AddTransaction extends StatefulWidget {
  const AddTransaction({Key? key}) : super(key: key);

  @override
  State<AddTransaction> createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  void onSubmit() {
    if (titleController.text.isEmpty || amountController.text.isEmpty) return;
    final String txTitle = titleController.text;
    final double txAmount = double.parse(amountController.text);

    print({txTitle, txAmount});
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          const Text(
            "New Transaction",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          TextField(
            decoration: const InputDecoration(label: Text("Title")),
            controller: titleController,
          ),
          TextField(
            decoration: const InputDecoration(label: Text("Amount")),
            controller: amountController,
            keyboardType: TextInputType.number,
            onSubmitted: (_) => onSubmit(),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
                onPressed: onSubmit,
                style: ButtonStyle(elevation: MaterialStateProperty.all(0)),
                child: const Text("Add")),
          )
        ],
      ),
    );
  }
}
