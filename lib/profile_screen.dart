import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Notifications'),
              subtitle: const Text('Manage notification settings'),
              trailing: Switch(
                value: false,
                onChanged: (bool value) {
                  //todo on changed
                },
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.brightness_6),
              title: const Text('Theme'),
              subtitle: const Text('Light / Dark mode'),
              onTap: () {
                //todo on onTap
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.lock),
              title: const Text('Privacy'),
              subtitle: const Text('Manage privacy settings'),
              onTap: () {
                //todo on onTap
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Account'),
              subtitle: const Text('Account information'),
              onTap: () {
                //todo on onTap
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.language),
              title: const Text('Language'),
              subtitle: const Text('Change language settings'),
              onTap: () {
                //todo on onTap
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              subtitle: const Text('App version and info'),
              onTap: () {
                //todo on onTap
              },
            ),
          ],
        ),
      ),
    );
  }
}
