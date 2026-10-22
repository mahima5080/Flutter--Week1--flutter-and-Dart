import 'package:flutter/material.dart';

void main() {
  runApp(const PersonalInfoApp());
}

class PersonalInfoApp extends StatelessWidget {
  const PersonalInfoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple, useMaterial3: true),
      home: const PersonalInfoScreen(),
    );
  }
}

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      appBar: AppBar(
        title: const Text('Personal Portfolio App'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              // Profile Photo / Avatar
              const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.deepPurple,
                child: CircleAvatar(
                  radius: 56,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 70, color: Colors.deepPurple),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Mahima Chaudhari',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black87),
              ),
              const SizedBox(height: 4),
              const Text(
                'MCA Postgraduate Student',
                style: TextStyle(fontSize: 16, color: Colors.deepPurple, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),

              // Contact Info Section
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: const [
                      ContactTile(icon: Icons.email, title: 'Email', value: 'mahima@example.com'),
                      Divider(),
                      ContactTile(icon: Icons.phone, title: 'Phone', value: '+91 98765 43210'),
                      Divider(),
                      ContactTile(icon: Icons.location_on, title: 'Location', value: 'Nashik, India'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Technical Skills Section
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Technical Skills',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 12),
                      Wrap(
                        spacing: 8.0,
                        runSpacing: 8.0,
                        children: const [
                          SkillChip(label: 'Flutter'),
                          SkillChip(label: 'Dart'),
                          SkillChip(label: 'Python'),
                          SkillChip(label: 'Data Structures'),
                          SkillChip(label: 'C++'),
                          SkillChip(label: 'Java'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const ContactTile({super.key, required this.icon, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.deepPurple),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 12, color: Colors.grey)),
            Text(value, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
          ],
        ),
      ],
    );
  }
}

class SkillChip extends StatelessWidget {
  final String label;

  const SkillChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.deepPurple[100],
      labelStyle: const TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
    );
  }
}