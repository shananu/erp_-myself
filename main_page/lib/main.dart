import 'package:flutter/material.dart';
import '../widgets/dashboard_tile.dart';
import '../constants/colors.dart';

class ERPDashboard extends StatelessWidget {
  const ERPDashboard({Key? key}) : super(key: key); // Key parameter for the widget

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
            routeName: '/feeDetail', // Ensure this is provided
          ),
          const DashboardTile(
            title: 'Notices',
            value: '10 new',
            color: AppColors.primaryBlue,
            icon: Icons.notifications,
            routeName: '/notices', // Ensure this is provided
          ),
          const DashboardTile(
            title: 'My Events',
            value: '5 Upcoming',
            color: AppColors.lightGrey, // Choose a suitable color from AppColors
            icon: Icons.event,
            routeName: '/events', // Ensure this is provided
          ),
          const DashboardTile(
            title: 'My Profile',
            value: 'View Details',
            color: AppColors.primaryGreen,
            icon: Icons.person,
            routeName: '/profile', // Ensure this is provided
          ),
          const DashboardTile(
            title: 'Timetable',
            value: 'View Timetable',
            color: AppColors.primaryOrange,
            icon: Icons.calendar_today,
            routeName: '/timetable', // Ensure this is provided
          ),
          const DashboardTile(
            title: 'Feedback',
            value: 'Provide Feedback',
            color: AppColors.accent,
            icon: Icons.feedback,
            routeName: '/feedback', // Ensure this is provided
          ),
          // Add more DashboardTiles as needed
        ],
      ),
    );
  }
}
