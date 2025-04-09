import 'package:flutter/material.dart';

class CustomAppDrawer extends StatelessWidget {
  const CustomAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.indigo.shade700,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Header with user info
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo.shade800,
            ),
            accountName: Text("Md. Mezbaul Islam Zion"),
            accountEmail: Text("zion.cse@diu.edu.bd"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person, size: 40, color: Colors.indigo),
            ),
          ),

          // Menu Items using ListTile
          _buildTile(icon: Icons.dashboard, label: "Dashboard"),
          _buildTile(icon: Icons.person, label: "Profile"),
          _buildTile(icon: Icons.notifications, label: "DIU Notice"),
          _buildTile(icon: Icons.directions_bus, label: "Bus Service"),
          _buildTile(icon: Icons.card_giftcard, label: "Promo Code"),
          _buildTile(icon: Icons.location_on, label: "Agent Location"),
          _buildTile(icon: Icons.share, label: "Contact Sharing"),
          _buildTile(icon: Icons.settings, label: "Settings"),
          _buildTile(icon: Icons.help_outline, label: "Help"),
          _buildTile(icon: Icons.info_outline, label: "About"),
          _buildTile(icon: Icons.question_answer, label: "FAQ"),
          const Divider(color: Colors.white70),
          _buildTile(icon: Icons.logout, label: "Sign Out"),
        ],
      ),
    );
  }

  Widget _buildTile({required IconData icon, required String label}) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(label, style: TextStyle(color: Colors.white)),
      onTap: () {
        // Add navigation logic here
      },
    );
  }
}
