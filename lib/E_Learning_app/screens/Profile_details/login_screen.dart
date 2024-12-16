import 'package:e_learning_app/E_Learning_app/screens/Profile_details/register_screen.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController  = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        elevation:  0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context); // back to privious screen
          }, icon:const  Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.00),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             const  SizedBox(height: 20),
              Image.asset(
                'assets/images/logo.png', 
                height: 80,
              ),
              const SizedBox(height: 20),
              const Text(
                'Enter Your Email and Password',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign:  TextAlign.center,
                
              ),
              // for email form
             const  SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding:  const EdgeInsets.symmetric(horizontal: 15),

                ),
                keyboardType: TextInputType.emailAddress,
              ),
               const SizedBox(height: 20),
               // for password 
               TextField(
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(8),
                    
                  ),
                  contentPadding:  EdgeInsets.symmetric(horizontal: 15),


                ),
                 obscureText: true,

               ),
               const SizedBox(height: 10),
               Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Forgot Password Clicked"),
                      ),
                    );
                  },
                  child: const Text(
                    "Forgot password",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Sign In Clicked"),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    "SIGN IN",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  RegisterScreen(),
                    ),
                  );
                },
                child: const Text(
                  "Register New Account",
                  style: TextStyle(color: Colors.blue),
                ),
             ),           ],
            
          ),

        ),
        
        ),

    
    );
  }
}