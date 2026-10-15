import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_info.dart';
import '../widgets/action_buttons.dart';
import '../widgets/social_media_row.dart';
import 'about_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutScreen()),
              );
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 24),
                    const ProfileHeader(
                      name: 'Muhammad Iqbal Maulana',
                      nim: '25.11.6586',
                    ),
                    const SizedBox(height: 24),
                    const ProfileInfo(
                      programStudi: 'S1 Informatika',
                      email: 'm.iqbal246@students.amikom.ac.id',
                      lokasi: 'Yogyakarta, Indonesia',
                    ),
                    const SizedBox(height: 16),
                    const SocialMediaRow(),
                  ],
                ),
              ),
            ),
            const Flexible(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: ActionButtons(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}