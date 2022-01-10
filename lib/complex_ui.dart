// import 'package:flutter/material.dart';
// import 'dart:math';

// class ComplexUI extends StatelessWidget {
//   const ComplexUI({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Complex UI',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: const MyPage(),
//     );
//   }
// }

// class MyPage extends StatefulWidget {
//   const MyPage({Key? key}) : super(key: key);

//   @override
//   State<MyPage> createState() => _MyPageState();
// }

// class _MyPageState extends State<MyPage> {
//   late AnimationController _animationController;

//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 1),
//     )..forward();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: AnimatedBuilder(
//         animation: _animationController,
//         builder: (context, child) {
//           return GridView.count(
//             crossAxisCount: 2,
//             crossAxisSpacing: 8,
//             mainAxisSpacing: 8,
//             padding: const EdgeInsets.all(8),
//             children: [
//               const MyStack(
//                 title: 'Philippines',
//                 imageUrl:
//                     'https://images.unsplash.com/photo-1551776315-d69681c7701f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
//               ),
//               const MyStack(
//                 title: 'Italy',
//                 imageUrl:
//                     'https://images.unsplash.com/photo-1575487283542-d1fd6f1b3d6c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
//               ),
//               Transform.rotate(
//                 angle: _animationController.value * pi,
//                 child: const MyStack(
//                   title: 'France',
//                   imageUrl:
//                       'https://images.unsplash.com/photo-1584266337361-679ae80c8519?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
//                 ),
//               ),
//               const MyStack(
//                 title: 'Greece',
//                 imageUrl:
//                     'https://images.unsplash.com/photo-1603288986817-7973bc90d346?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=789&q=80',
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }

// class MyStack extends StatelessWidget {
//   const MyStack({Key? key, required this.imageUrl, required this.title})
//       : super(key: key);
//   final String title;
//   final String imageUrl;

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: Alignment.bottomLeft,
//       children: [
//         Image.network(imageUrl),
//         Container(
//           padding: const EdgeInsets.only(left: 8.0),
//           color: Colors.black87.withOpacity(0.6),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 title,
//                 style: const TextStyle(
//                   color: Colors.white,
//                 ),
//               ),
//               IconButton(
//                   onPressed: () {},
//                   icon: const Icon(
//                     Icons.star_border,
//                     color: Colors.white,
//                   ))
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }
