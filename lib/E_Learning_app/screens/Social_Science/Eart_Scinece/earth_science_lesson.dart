import 'package:flutter/material.dart';

class EarthScienceLesson extends StatelessWidget {
  final List<Map<String, String>> lessons = [
      {'title': 'Lesson 1: Complex Numbers', 'content': 'Introduction to complex numbers.'},
      {'title': 'Lesson 2: Quadratic Equations', 'content': 'Understanding quadratic equations.'},
      {'title': 'Lesson 3: Trigonometry', 'content': 'Basics of trigonometry and its applications.'},
      {'title': 'Lesson 4: Trigonometry', 'content': 'Basics of trigonometry and its applications.'},
      {'title': 'Lesson 5: Trigonometry', 'content': 'Basics of trigonometry and its applications.'},
      {'title': 'Lesson 6: Trigonometry', 'content': 'Basics of trigonometry and its applications.'},
      {'title': 'Lesson 7: Trigonometry', 'content': 'Basics of trigonometry and its applications.'},
      {'title': 'Lesson 8: Trigonometry', 'content': 'Basics of trigonometry and its applications.'},
      {'title': 'Lesson 9: Trigonometry', 'content': 'Basics of trigonometry and its applications.'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Eart Science Lessons'),
        backgroundColor: Colors.lightBlue,
      ),
      body: ListView.builder(
        itemCount: lessons.length,
        itemBuilder: (context, index) {
          final lesson = lessons[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text(lesson['title']!),
              subtitle: Text(lesson['content']!),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${lesson['title']} tapped')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
