import 'package:flutter/material.dart';
import 'package:stripe_payment_app/Home/stripe_payment.dart';

void main() => runApp(StripePaymentApp());

class StripePaymentApp extends StatefulWidget {
  @override
  State<StripePaymentApp> createState() => _StripePaymentAppState();
}

class _StripePaymentAppState extends State<StripePaymentApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stripe Payment App',
      theme: ThemeData(
        primaryColor: Color(0xFF635BFF),
        scaffoldBackgroundColor: Color(0xFFF7F7F7),
        fontFamily: 'Roboto',
      ),
      home: HomeScreen(),
    );
  }
}
