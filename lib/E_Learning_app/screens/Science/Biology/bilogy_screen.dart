// import 'package:flutter/material.dart';
// import '../Biology/biology_detail.dart';


// class BiologyLessonsScreen extends StatelessWidget {
//   final List<Map<String, String>> lessons = [
//     {
//       'title': 'Lesson 1: Complex Numbers',
//       'description': 'Introduction to complex numbers.',
//       'filePath': 'assets/Files/ComplexNumber.pdf',
//     },
//     {
//       'title': 'Lesson 2: Quadratic Equations',
//       'description': 'Understanding quadratic equations.',
//       'filePath': 'assets/Files/lesson2.pdf',
//     },
//     {
//       'title': 'Lesson 3: Trigonometry',
//       'description': 'Exploring trigonometric concepts.',
//       'filePath': 'assets/Files/lesson3.pdf',
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Lessons'),
//         backgroundColor: Colors.lightBlue,
//       ),
//       body: ListView.builder(
//         itemCount: lessons.length,
//         itemBuilder: (context, index) {
//           final lesson = lessons[index];
//           return Card(
//             margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: ListTile(
//               title: Text(lesson['title']!),
//               subtitle: Text(lesson['description']!),
//               trailing: const Icon(Icons.arrow_forward),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => LessonDetailScreen(
//                       title: lesson['title']!,
//                       description: lesson['description']!,
//                       filePath: lesson['filePath']!,
//                     ),
//                   ),
//                 );
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
