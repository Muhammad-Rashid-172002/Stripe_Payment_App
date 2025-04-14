import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Available Balance', style: TextStyle(color: Colors.grey)),
            SizedBox(height: 8),
            Text(
              '\$1,250.00',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Withdraw'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                  ),
                ),
                SizedBox(width: 12),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Add Funds'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF00C896),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TransactionTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.greenAccent,
        child: Icon(Icons.arrow_downward, color: Colors.white),
      ),
      title: Text('Payment Received'),
      subtitle: Text('April 12, 2025'),
      trailing: Text(
        '+ \$50.00',
        style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
      ),
    );
  }
}
