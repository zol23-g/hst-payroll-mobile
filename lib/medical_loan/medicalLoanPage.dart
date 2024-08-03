import 'package:flutter/material.dart';

class MedicalLoanScreen extends StatelessWidget {
  const MedicalLoanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (
            Text('Medical Loan')
        ),
        backgroundColor:  Color(0xff0D47A1),
      ),
      body: Center(child: Text("Medical Loan Page")),
    );
  }
}
