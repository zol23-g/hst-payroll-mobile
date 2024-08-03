import 'package:flutter/material.dart';

class InvestmentScreen extends StatelessWidget {
  const InvestmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (
        Text('Investments')
        ),
        backgroundColor:  Color(0xff0D47A1),
      ),
      body: Center(child: Text("InvestmentScreen")),
    );
  }
}
