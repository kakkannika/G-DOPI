import 'package:e_learning_app/E_Learning_app/screens/Profile_details/Login_screen.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        elevation: 0,
      ),
      body:   Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const  Text (' please login to have more exctied\n feature',
            textAlign: TextAlign.center,
            style:TextStyle(
              color: Colors.grey,
              fontSize: 16
            ),
            
            
          ),
         const  SizedBox(height: 10),
           ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightBlue,
              padding:const  EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),

            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(), // link to Login Screen
                  ),
                );
             }, 
            child: const Text('GO LOGIN',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ))
            
            
          ],
          
        ),
      ),
     
    );
  }
}
