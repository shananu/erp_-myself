import 'package:flutter/material.dart';
import '../widgets/dashboard_tile.dart';
import '../constants/colors.dart';

class ERPDashboard extends StatelessWidget {
  const ERPDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ERP Dashboard'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          const DashboardTile(
            title: 'My Fee Detail',
            value: '₹137500',
            color: AppColors.accent,
            icon: Icons.attach_money,
            routeName: '/feeDetail',
          ),
          const DashboardTile(
            title: 'Notices',
            value: '10 new',
            color: AppColors.primaryBlue,
            icon: Icons.notifications,
            routeName: '/notices',
          ),
        ],
      ),
    );
  }
}
