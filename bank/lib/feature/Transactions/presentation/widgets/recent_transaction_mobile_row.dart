import 'package:flutter/material.dart';

class RecentTransactionMobileRow extends StatelessWidget {
  const RecentTransactionMobileRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Icon(Icons.arrow_circle_up, color: Colors.green),
              SizedBox(width: 6),
              Text('Wilson'),
            ],
          ),

          Text('+\$840', style: TextStyle(color: Colors.green)),
        ],
      ),
    );
  }
}
