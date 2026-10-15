import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.camera_alt, color: Colors.pink),
          onPressed: () => _showSnackBar(context, 'Instagram diklik'),
        ),
        const SizedBox(width: 16),
        IconButton(
          icon: const Icon(Icons.work, color: Colors.blue),
          onPressed: () => _showSnackBar(context, 'LinkedIn diklik'),
        ),
        const SizedBox(width: 16),
        IconButton(
          icon: const Icon(Icons.code, color: Colors.black),
          onPressed: () => _showSnackBar(context, 'GitHub diklik'),
        ),
      ],
    );
  }
}