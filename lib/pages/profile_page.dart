import 'package:flutter/material.dart';
import 'package:test_flutter/core/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.green,
      ),
      body: const Column(
        children: [
          SizedBox(height: kDouble20),
          CircleAvatar(
            backgroundImage: AssetImage('images/yeah.png'),
            radius: 70,
          ),
          SizedBox(height: kDouble20),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Learning flutter'),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('info@samsantech.com'),
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text('SamsanTech'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.dark_mode),
      ),
    );
  }
}
