import 'package:fixit/components/payment_method_option.dart';
import 'package:flutter/material.dart';

class SelectedPaymentMethod extends StatefulWidget {
  const SelectedPaymentMethod({super.key});

  @override
  State<SelectedPaymentMethod> createState() => _SelectedPaymentMethodState();
}

class _SelectedPaymentMethodState extends State<SelectedPaymentMethod> {
  String _selectedPaymentMethod = 'Easypaisa';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Select Payment method",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w800, color: Colors.black54),
        ),
        const SizedBox(height: 12),
        PaymentMethodOption(
          title: 'Easypaisa',
          imageUrl:
              'assets/icons/easypaisa.png', // Replace with your Easypaisa asset path
          isSelected: _selectedPaymentMethod == 'Easypaisa',
          onTap: () {
            setState(() {
              _selectedPaymentMethod = 'Easypaisa';
            });
          },
        ),
        PaymentMethodOption(
          title: 'Bank account',
          imageUrl:
              'assets/icons/bankaccount.png', // Replace with your Bank account asset path
          isSelected: _selectedPaymentMethod == 'Bank account',
          onTap: () {
            setState(() {
              _selectedPaymentMethod = 'Bank account';
            });
          },
        ),
        PaymentMethodOption(
          title: 'Jazz cash',
          imageUrl:
              'assets/icons/jazzcash.png', // Replace with your Jazz cash asset path
          isSelected: _selectedPaymentMethod == 'Jazz cash',
          onTap: () {
            setState(() {
              _selectedPaymentMethod = 'Jazz cash';
            });
          },
        ),
        PaymentMethodOption(
          title: 'PayPal',
          imageUrl:
              'assets/icons/paypal.png', // Replace with your PayPal asset path
          isSelected: _selectedPaymentMethod == 'PayPal',
          onTap: () {
            setState(() {
              _selectedPaymentMethod = 'PayPal';
            });
          },
        ),
      ],
    );
  }
}
