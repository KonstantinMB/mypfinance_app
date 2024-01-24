import 'package:flutter/material.dart';

class ExpenseSummaryPage extends StatelessWidget {

  const ExpenseSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Example balance value
    double walletBalance = 1234.56;

    return Scaffold(
      appBar: AppBar(title: Text('Expense Summary')),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            WalletBalanceWidget(balance: walletBalance),
            // Other summary elements go here
          ],
        ),
      ),
    );
  }
}


class WalletBalanceWidget extends StatelessWidget {
  final double balance;

  WalletBalanceWidget({required this.balance});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(25), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'My WALLET',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            '\$${balance.toStringAsFixed(2)}', // Format balance to 2 decimal places
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}

