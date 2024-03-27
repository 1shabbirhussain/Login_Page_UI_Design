import 'package:asdfg/views/homepage.dart';
import 'package:asdfg/views/login_view.dart';
import 'package:asdfg/views/otherpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "My Navigation",
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 800),
      getPages: [
        GetPage(
          name: "/",
          page: () => MyApp(),
        ),
        GetPage(
          name: "/home",
          page: () => const HomePage(),
        ),
        GetPage(
            name: "/otherpage/:valuePassed",
            page: () => const OtherPage(),
            transition: Transition.downToUp,
            ),
      ],
      home: LoginView(),
    );
  }
}

// class CheckBoxWithText extends StatefulWidget {
//   @override
//   _CheckBoxWithTextState createState() => _CheckBoxWithTextState();
// }

// class _CheckBoxWithTextState extends State<CheckBoxWithText> {
//   bool isChecked = false;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Checkbox(
//           value: isChecked,
//           onChanged: (value) {
//             setState(() {
//               isChecked = value!;
//             });
//           },
//         ),
//         const Text(
//           "Remember Password",
//           style: TextStyle(
//             color: Colors.black45,
//             fontSize: 14,
//             fontFamily: "Source-San-3",
//           ),
//         ),
//       ],
//     );
//   }
// }

// class CustomElevatedButton extends StatelessWidget {
//   final Color backgroundColor;
//   final Color borderColor;
//   final Widget child;
//   final VoidCallback? onPressed;

//   const CustomElevatedButton({
//     Key? key,
//     required this.backgroundColor,
//     required this.borderColor,
//     required this.child,
//     this.onPressed,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: onPressed,
//       style: ButtonStyle(
//         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//           RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(30.0),
//             side: BorderSide(color: borderColor),
//           ),
//         ),
//         backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
//         child: child,
//       ),
//     );
//   }
// }
// =====================================================SLOPE DESIGN ==================================================
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.amber,
//         appBar: AppBar(
//           title: Text('Sloped Bottom Container'),
//         ),
//         body: Stack(
//           alignment: Alignment.center,
//           children: [
//             Positioned(
//               top: 0,
//               child: SlopedBottomContainer(
//                 width: Get.width * 0.9,
//                 height: MediaQuery.of(context).size.height * 0.5,
//                 leftHeight: 10,
//                 rightHeight: 150,
//                 color: Colors.blue,
//               ),
//             ),
//             Positioned(
//               top: MediaQuery.of(context).size.height * 0.33,
//               child: SlopedTopContainer(
//                 width: Get.width * 0.9,
//                            height: MediaQuery.of(context).size.height * 0.5,

//                 leftHeight: 150,
//                 rightHeight: 10,
//                 color: Colors.blue,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class SlopedBottomContainer extends StatelessWidget {
//   final double width;
//   final double height;
//   final double leftHeight;
//   final double rightHeight;
//   final Color color;

//   SlopedBottomContainer({
//     required this.width,
//     required this.height,
//     required this.leftHeight,
//     required this.rightHeight,
//     required this.color,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(
//       size: Size(width, height),
//       painter: SlopedBottomPainter(leftHeight, rightHeight, 10, color),
//     );
//   }
// }

// class SlopedBottomPainter extends CustomPainter {
//   final double leftHeight;
//   final double rightHeight;
//   final double borderRadius;
//   final Color color;

//   SlopedBottomPainter(
//       this.leftHeight, this.rightHeight, this.borderRadius, this.color);

//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()..color = color;

//     Path path = Path();
//     path.moveTo(0, borderRadius);
//     path.arcToPoint(Offset(borderRadius, 0),
//         clockwise: true, radius: Radius.circular(borderRadius));
//     path.lineTo(size.width - borderRadius, 0);
//     path.arcToPoint(Offset(size.width, borderRadius),
//         clockwise: true, radius: Radius.circular(borderRadius));
//     path.lineTo(size.width, size.height - rightHeight - borderRadius);
//     path.arcToPoint(
//         Offset(size.width - borderRadius, size.height - rightHeight),
//         clockwise: true,
//         radius: Radius.circular(borderRadius));
//     path.lineTo(borderRadius, size.height - leftHeight);
//     path.arcToPoint(Offset(0, size.height - leftHeight - borderRadius),
//         clockwise: true, radius: Radius.circular(borderRadius));
//     path.close();

//     // Define shadow parameters
//     final Path shadowPath = path
//         .shift(Offset(0, 2)); // Shift path slightly downward for shadow effect
//     final Paint shadowPaint = Paint()
//       ..color = Colors.black.withOpacity(0.3)
//       ..maskFilter = MaskFilter.blur(BlurStyle.normal, 5);

//     // Draw shadow
//     canvas.drawPath(shadowPath, shadowPaint);

//     // Draw bezier curve
//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(SlopedBottomPainter oldDelegate) {
//     return true;
//   }
// }

// class SlopedTopContainer extends StatelessWidget {
//   final double width;
//   final double height;
//   final double leftHeight;
//   final double rightHeight;
//   final Color color;

//   SlopedTopContainer({
//     required this.width,
//     required this.height,
//     required this.leftHeight,
//     required this.rightHeight,
//     required this.color,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(
//       size: Size(width, height),
//       painter: SlopedTopPainter(leftHeight, rightHeight, 10, color),
//     );
//   }
// }

// class SlopedTopPainter extends CustomPainter {
//   final double leftHeight;
//   final double rightHeight;
//   final double borderRadius;
//   final Color color;

//   SlopedTopPainter(
//       this.leftHeight, this.rightHeight, this.borderRadius, this.color);

//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()..color = color;

//     Path path = Path();
//     path.moveTo(0, size.height - borderRadius);
//     path.arcToPoint(Offset(borderRadius, size.height),
//         clockwise: false, radius: Radius.circular(borderRadius));
//     path.lineTo(size.width - borderRadius, size.height);
//     path.arcToPoint(Offset(size.width, size.height - borderRadius),
//         clockwise: false, radius: Radius.circular(borderRadius));
//     path.lineTo(size.width, rightHeight + borderRadius);
//     path.arcToPoint(Offset(size.width - borderRadius, rightHeight),
//         clockwise: false, radius: Radius.circular(borderRadius));
//     path.lineTo(borderRadius, leftHeight);
//     path.arcToPoint(Offset(0, leftHeight + borderRadius),
//         clockwise: false, radius: Radius.circular(borderRadius));
//     path.close();

//     // Define shadow parameters
//     final Path shadowPath = path
//         .shift(Offset(0, 2)); // Shift path slightly downward for shadow effect
//     final Paint shadowPaint = Paint()
//       ..color = Colors.black.withOpacity(0.3)
//       ..maskFilter = MaskFilter.blur(BlurStyle.normal, 5);

//     // Draw shadow
//     canvas.drawPath(shadowPath, shadowPaint);

//     // Draw bezier curve
//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(SlopedTopPainter oldDelegate) {
//     return true;
//   }
// }
