import 'package:e_learning_app/E_Learning_app/screens/Science/Biology/bilogy_screen.dart';
import 'package:e_learning_app/E_Learning_app/screens/Science/Chemistry/chemistry_lesson.dart';
import 'package:e_learning_app/E_Learning_app/screens/Science/English/english_screen.dart';
import 'package:e_learning_app/E_Learning_app/screens/Science/History/history_lesson.dart';
import 'package:e_learning_app/E_Learning_app/screens/Science/Khmer/khmer_lesson.dart';
import 'package:e_learning_app/E_Learning_app/screens/Science/Mathematics/math_lesson.dart';
import 'package:e_learning_app/E_Learning_app/screens/Science/Physics/physics_lesson.dart';
import 'package:flutter/material.dart';
import 'search_screen.dart';

class ScienceDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> subjects = [
      {'name': 'Mathematics', 'icon': 'assets/images/math.png'},
      {'name': 'Chemistry', 'icon': 'assets/images/chemistry.png'},
      {'name': 'Physics', 'icon': 'assets/images/physics.png'},
      {'name': 'Khmer', 'icon': 'assets/images/khmer.png'},
      {'name': 'History', 'icon': 'assets/images/History.png'},
      {'name': 'Biology', 'icon': 'assets/images/biology.png'},
      {'name': 'English', 'icon': 'assets/images/english.png'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Science'),
        backgroundColor: Colors.lightBlue,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
             Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => SearchScreen(),
  ),
);

            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Science Banner
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/Science.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Title Section
              const Text(
                'Science Subjects',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),

              // Grid of Subjects
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(), // Prevent GridView from scrolling
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // 3 columns
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1, 
                ),
                itemCount: subjects.length,
                itemBuilder: (context, index) {
                  final subject = subjects[index];
                  return GestureDetector(
                    onTap: () {
                  if (subject['name'] == 'Mathematics') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>MathLessonsScreen()),
                  );
                // }else if(subject['name'] == 'Chemistry'){
                //   Navigator.push(
                //     context, 
                //     MaterialPageRoute(builder: (context) => ChemistryLesson()),
                //   );
                // }else if(subject['name'] == 'Physics'){
                //   Navigator.push(
                //     context, 
                //     MaterialPageRoute(builder: (context) => PhysicsLesson()),
                //   );
                // }
                // else if(subject['name'] == 'History'){
                //   Navigator.push(
                //     context, 
                //     MaterialPageRoute(builder: (context) =>HistoryLesson()),
                //   );
                // }
                //  else if(subject['name'] == 'Khmer'){
                //   Navigator.push(
                //     context, 
                //     MaterialPageRoute(builder: (context) =>KhmerScreen()),
                //   );
                // } else if(subject['name'] == 'English'){
                //   Navigator.push(
                //     context, 
                //     MaterialPageRoute(builder: (context) =>EnglishScreen()),
                //   );
                // }
                //  else if(subject['name'] == 'Biology'){
                //   Navigator.push(
                //     context, 
                //     MaterialPageRoute(builder: (context) =>BiologyLessonsScreen()),
                //   );
                 }
                    
              },
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            subject['icon']!,
                            height: 40,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            subject['name']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}