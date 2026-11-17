import 'package:flutter/material.dart';

import 'dog_avatar.dart';

class WelcomeHero extends StatelessWidget {
  const WelcomeHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 375,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        color: const Color(0xfff5faf3),
        borderRadius: BorderRadius.circular(28),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 78),
          Center(child: DogAvatar()),
          SizedBox(height: 63),
          Text(
            'Welcome to PawTrack',
            style: TextStyle(
              color: Color(0xff103628),
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 12),
          Text(
            'Safer, happier dog walks.',
            style: TextStyle(color: Color(0xff66786f), fontSize: 16),
          ),
          SizedBox(height: 16),
          Text(
            'Track the walk live and keep every route.',
            style: TextStyle(color: Color(0xff66786f), fontSize: 14),
          ),
        ],
      ),
    );
  }
}
