import 'package:flutter/material.dart';
import 'package:twentyoneassignment/utills/routes.dart';

void main() {
  runApp(const ContractManagementSystem());
}

class ContractManagementSystem extends StatelessWidget {
  const ContractManagementSystem({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contract Management System',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: appRoutes,
    );
  }
}
