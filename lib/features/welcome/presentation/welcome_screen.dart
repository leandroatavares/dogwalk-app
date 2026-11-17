import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

const _ink = Color(0xff103628);
const _green = Color(0xff087642);
const _muted = Color(0xff66786f);

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  void _showComingSoon(BuildContext context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Coming soon')));
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) => SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Row(
                        children: [
                          Text('🐾', style: TextStyle(fontSize: 25)),
                          SizedBox(width: 4),
                          Text(
                            'PawTrack',
                            style: TextStyle(
                              color: _ink,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Container(
                        height: 375,
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                          color: const Color(0xfff5faf3),
                          borderRadius: BorderRadius.circular(28),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 78),
                            Center(child: _DogAvatar()),
                            const SizedBox(height: 63),
                            const Text(
                              'Welcome to PawTrack',
                              style: TextStyle(
                                color: _ink,
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 12),
                            const Text(
                              'Safer, happier dog walks.',
                              style: TextStyle(color: _muted, fontSize: 16),
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              'Track the walk live and keep every route.',
                              style: TextStyle(color: _muted, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 21),
                        child: Text(
                          'Safe walks, happy tails.',
                          style: TextStyle(
                            color: _ink,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: (constraints.maxHeight - 625).clamp(
                          36.0,
                          122.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: SizedBox(
                          height: 50,
                          child: FilledButton(
                            onPressed: () => _showComingSoon(context),
                            style: FilledButton.styleFrom(
                              backgroundColor: _green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17),
                              ),
                            ),
                            child: const Text(
                              'Get Started',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 18),
                      TextButton(
                        onPressed: () => _showComingSoon(context),
                        child: const Text(
                          'I already have an account',
                          style: TextStyle(
                            color: _green,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _DogAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 54,
      height: 54,
      child: Stack(
        children: [
          SvgPicture.asset('assets/welcome/dog_background.svg'),
          Positioned(
            left: 12,
            top: 10,
            child: SvgPicture.asset('assets/welcome/dog_face.svg'),
          ),
          Positioned(
            left: 7,
            top: 13,
            child: SvgPicture.asset('assets/welcome/dog_ear.svg'),
          ),
          Positioned(
            left: 35,
            top: 13,
            child: SvgPicture.asset('assets/welcome/dog_ear.svg'),
          ),
          Positioned(
            left: 24,
            top: 30,
            child: SvgPicture.asset('assets/welcome/dog_nose.svg'),
          ),
        ],
      ),
    );
  }
}
