import 'package:flutter/material.dart';

class PayslipScreen extends StatelessWidget {
  const PayslipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (
            Text('Payslip')
        ),
        backgroundColor:  Color(0xff0D47A1),
      ),
      body: Center(child: Text("Payslip Screen")),
    );
  }
}
