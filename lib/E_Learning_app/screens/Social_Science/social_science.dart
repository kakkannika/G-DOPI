import 'package:e_learning_app/E_Learning_app/screens/Science/History/history_lesson.dart';
import 'package:e_learning_app/E_Learning_app/screens/Social_Science/Eart_Scinece/earth_science_lesson.dart';
import 'package:e_learning_app/E_Learning_app/screens/Social_Science/English/english.dart';
import 'package:e_learning_app/E_Learning_app/screens/Social_Science/Geography/geography_lesson.dart';
import 'package:e_learning_app/E_Learning_app/screens/Social_Science/History/history_lesson.dart';
import 'package:e_learning_app/E_Learning_app/screens/Social_Science/Khmer/khmer_lesson.dart';
import 'package:e_learning_app/E_Learning_app/screens/Social_Science/Mathematics/math_lesson.dart';
import 'package:e_learning_app/E_Learning_app/screens/Social_Science/Morality/morality_lesson.dart';
import 'package:flutter/material.dart';

class SocialScience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> subjects = [
      {'name': 'Mathematics', 'icon': 'assets/images/math.png'},
      {'name': 'Geography', 'icon': 'assets/images/chemistry.png'},
      {'name': 'Morality', 'icon': 'assets/images/physics.png'},
      {'name': 'Khmer', 'icon': 'assets/images/khmer.png'},
      {'name': 'History', 'icon': 'assets/images/History.png'},
      {'name': 'Eart Scinece', 'icon': 'assets/images/biology.png'},
      {'name': 'English', 'icon': 'assets/images/english.png'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(' Social Science'),
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
                    image: AssetImage('assets/images/Social_Science.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Title Section
              const Text(
                ' Social Science Subjects',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),

              // Grid of Subjects
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, 
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1, 
                ),
                itemCount: subjects.length,
                itemBuilder: (context, index) {
                  final subject = subjects[index];
                  return GestureDetector(
                    onTap: () {
                     if (subject['name'] == 'Khmer') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>KhmerLessonScreen()),
                  );
                }else if(subject['name'] == 'History'){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => HistoryLessonScreen()),
                  );
                }else if(subject['name'] == 'Geography'){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => GeographyLesson()),
                  );
                }
                else if(subject['name'] == 'Mathematics'){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) =>MathLesson()),
                  );
                }
                 else if(subject['name'] == 'Morality'){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) =>MoralityLesson()),
                  );
                } else if(subject['name'] == 'English'){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) =>EnglishLessonScreen()),
                  );
                }
                 else if(subject['name'] == 'Eart Scinece'){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) =>EarthScienceLesson()),
                  );
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