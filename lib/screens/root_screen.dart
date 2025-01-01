import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({required this.detailsPath, super.key});

  final String detailsPath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RootScreen'),
        actions: [
          TextButton(
            onPressed: () {
              context.go('/login');
            },
            child: const Text('Logout'),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Root Screen', style: Theme.of(context).textTheme.titleLarge),
            const Padding(padding: EdgeInsets.all(4)),
            TextButton(
              onPressed: () {
                context.go('/details');
              },
              child: const Text('View details'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.details),
            label: 'Details',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              context.go('/details');
            case 1:
              context.go('/settings');
          }
        },
      ),
    );
  }
}
