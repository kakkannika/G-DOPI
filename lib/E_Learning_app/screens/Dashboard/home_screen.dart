import 'package:flutter/material.dart';
import 'home_tab.dart'; 
import 'library_tab.dart'; 
import 'test_tab.dart'; 
import 'profile_tab.dart'; 
import '../../widget/bottom_nav_bar.dart'; 

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeTab(),      
    LibraryTab(), 
    TestTab(),      
    ProfileTab(),    
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const  Text('Welcome to G-DOPI'),
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/images/logo.png'), 
          
        ),
      ),
      body: _screens[_selectedIndex], 
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
