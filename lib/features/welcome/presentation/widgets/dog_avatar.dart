import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DogAvatar extends StatelessWidget {
  const DogAvatar({super.key});

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
