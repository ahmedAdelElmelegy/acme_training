import 'package:flutter/material.dart';

class TransactionTableRow extends StatelessWidget {
  const TransactionTableRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: const [
                Icon(Icons.arrow_circle_up, color: Colors.green),
                SizedBox(width: 6),
                Text('Wilson'),
              ],
            ),
          ),
          const Expanded(child: Text('#12548796')),
          const Expanded(child: Text('Transfer')),
          const Expanded(child: Text('1234 ****')),
          const Expanded(child: Text('14 Jan, 10.40 PM')),
          const Expanded(
            child: Text('+\$840', style: TextStyle(color: Colors.green)),
          ),
          Expanded(
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 8),
              ),
              child: const Text('Download'),
            ),
          ),
        ],
      ),
    );
  }
}
