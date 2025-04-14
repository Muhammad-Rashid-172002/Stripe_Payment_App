import 'package:flutter/material.dart';
import 'package:stripe_payment_app/Home/BalanceCard.dart';
import 'package:stripe_payment_app/Home/payment_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StripePay'),
        backgroundColor: Color(0xFF635BFF),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BalanceCard(),
            SizedBox(height: 24),
            Text(
              'Recent Transactions',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => TransactionTile(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed:
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddPaymentScreen()),
            ),
        label: Text('Make Payment'),
        icon: Icon(Icons.payment),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
