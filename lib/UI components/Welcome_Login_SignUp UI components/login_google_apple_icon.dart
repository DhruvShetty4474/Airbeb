import 'package:flutter/material.dart';

class LoginGoogleAppleIcon extends StatelessWidget {
  final String ImagePath;
  final double size;
  const LoginGoogleAppleIcon({super.key, required this.ImagePath, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(

        border: Border.all(
            width: 1,
            color: Colors.white),
        borderRadius: BorderRadius.circular(100),
        color: Colors.grey[200],

      ),
      child: Image.asset(
        ImagePath,
        height: size,
        // fit: BoxFit.fill,
      ),
      
    );
  }
}
