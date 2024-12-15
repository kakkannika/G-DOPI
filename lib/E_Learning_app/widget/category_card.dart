// widgets/category_card.dart
import 'package:flutter/material.dart';
import '../model/category.dart';
class CategoryCard extends StatelessWidget {
  final String title;
  final String author;
  final String imageUrl;
  final int progress;
  final String description;

  const CategoryCard({
    Key? key,
    required this.title,
    required this.author,
    required this.imageUrl,
    required this.progress,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Section
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imageUrl,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          // Title Section
          Text(
            title,
            style: TextStyle(
              fontSize: screenWidth > 600 ? 16 : 14,
              fontWeight: FontWeight.bold,
            ),
          ),

          Text(
            description,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black87,
            ),
             maxLines: 2, // Limit to 2 lines
            overflow: TextOverflow.ellipsis, 
          ),
          
          const SizedBox(height: 5),
          Text(
            'By $author',
            style: TextStyle(
              fontSize: screenWidth > 600 ? 14 : 12,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 5),
          
          LinearProgressIndicator(
            value: progress / 100,
            color: Colors.blueAccent,
            backgroundColor: Colors.grey[300],
          ),
        ],
      ),
    );
  }
}

