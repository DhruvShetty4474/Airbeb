import 'package:flutter/material.dart';


// Have to make the button reusable.

class WelcoomeScreenButton extends StatelessWidget
{
  final VoidCallback onTab;
  final String label;
  final Color backgroundColor;
  final Color foregroundColor;



  const WelcoomeScreenButton({
    super.key,
    required this.onTab,
    required this.label,
    required this.backgroundColor,
    required this.foregroundColor,


  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 3, left: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: const Border(
          bottom: BorderSide(color: Colors.black),
          top: BorderSide(color: Colors.black),
          left: BorderSide(color: Colors.black),
          right: BorderSide(color: Colors.black),
        ),
      ),
      child: ElevatedButton(
          onPressed: (){
            onTab;
          },
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 60),
            // backgroundColor:Color(0xFF81C784),
            backgroundColor: backgroundColor,
            // foregroundColor: Colors.black,
            foregroundColor: foregroundColor,
            elevation: 3.5,
            shadowColor: Colors.grey[900],
            // shape: RoundedRectangleBorder(
            //   side: const BorderSide(color: Colors.black),
            //   borderRadius: BorderRadius.circular(50),
            // ),
          ),
          child: Text( label ,style: const TextStyle(
            // color: Colors.black,
              fontSize: 19,
              fontWeight: FontWeight.w600
          ),)
      ),
    );
  }
}





// class SignUpButton extends StatelessWidget {
//   const SignUpButton({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//         onPressed: (){},
//         style: ElevatedButton.styleFrom(
//           minimumSize: const Size(double.infinity, 60),
//           backgroundColor: Colors.green[100],
//           foregroundColor: Colors.black,
//           elevation: 3.5,
//           shadowColor: Colors.grey[900],
//           // shape: RoundedRectangleBorder(
//           //   side: const BorderSide(color: Colors.black),
//           //   borderRadius: BorderRadius.circular(50),
//           // ),
//         ),
//         child: Text('Sign Up',style: TextStyle(
//           // color: Colors.black,
//             fontSize: 19,
//             fontWeight: FontWeight.w600
//         ),)
//     );
//   }
// }
