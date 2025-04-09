import 'package:flutter/material.dart';
import 'customappbar.dart';

void main() {
  runApp(My1CardApp());
}

class My1CardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '1Card',
      home: DashboardPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade700,
      drawer: CustomAppDrawer(),
      appBar: AppBar(
        title: Text("1Card"),
        backgroundColor: Colors.indigo[400],
        actions: [
          SizedBox(width: 12),
          Icon(Icons.more_vert),
          SizedBox(width: 12),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                _NavItem(title: 'Dashboard', icon: Icons.dashboard),
                _NavItem(title: 'Services', icon: Icons.miscellaneous_services),
                _NavItem(title: 'Transaction', icon: Icons.sync_alt),
                _NavItem(title: 'Virtual ID', icon: Icons.perm_identity),
              ],
            ),
          ),
          Container(
            color: Colors.indigo[400],
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Row(
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person, size: 35, color: Colors.indigo),
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Md. Mezbaul Islam Zion",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                        Text("710003558",
                            style: TextStyle(color: Colors.white70)),
                        Text("Card Status: Active",
                            style: TextStyle(color: Colors.white)),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 80,
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        decoration: BoxDecoration(
                          color: Colors.indigo[400],
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text("****",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                              Text("Usable Balance",
                                  style: TextStyle(color: Colors.white70)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Icon(
                              Icons.qr_code,
                              size: 40,
                              color: Colors.indigo,
                            ),
                            Text("Scan Me")
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.grey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Recent Activities",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  _ActivityItem(
                    time: "1:31pm on Saturday 1st February 2025",
                    description: "Last Login ( 24069RA21C )",
                    icon: Icons.login,
                  ),
                  _ActivityItem(
                    time: "6:23pm on Friday 27th December 2024",
                    description: "Last Logout ( 24069RA21C )",
                    icon: Icons.logout,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const _NavItem({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.white, size: 28),
        SizedBox(height: 4),
        Text(title, style: TextStyle(color: Colors.white, fontSize: 12)),
      ],
    );
  }
}

class _ActivityItem extends StatelessWidget {
  final String time;
  final String description;
  final IconData icon;

  const _ActivityItem({
    required this.time,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: Colors.indigo),
        title: Text(time, style: TextStyle(fontWeight: FontWeight.w500)),
        subtitle: Text(description),
      ),
    );
  }
}
