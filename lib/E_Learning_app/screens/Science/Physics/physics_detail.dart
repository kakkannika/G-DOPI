// import 'package:flutter/material.dart';

// class LessonDetailScreen extends StatelessWidget {
//   final String title;
//   final String description;
//   final String filePath;

//   const LessonDetailScreen({
//     Key? key,
//     required this.title,
//     required this.description,
//     required this.filePath,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//         backgroundColor: Colors.lightBlue,
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               description,
//               style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//           ),
//           Expanded(
//             child: PDFView(
//               filePath: filePath,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
