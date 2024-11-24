import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final TextEditingController controller ;
  final String hintText;
  final bool obsecureText;
  const LoginTextField({super.key, required this.hintText,  required this.obsecureText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   label,
        //   style: const TextStyle(
        //     fontSize: 15,
        //     fontWeight: FontWeight.w400,
        //     color: Colors.black87,
        //   ),
        // ),
        //
        // const SizedBox(height: 5,),
        TextField(
          controller: controller,
          obscureText: obsecureText,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[400]!),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[400]!),
            ),
          ),
        ),

      ],
    );
  }
}
