import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      title: 'PDF Viewer App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MypdfViewer(), // Starting screen
    );
  }
}

class MypdfViewer extends StatefulWidget {
  const MypdfViewer({super.key});

  @override
  State<MypdfViewer> createState() => _MypdfViewerState();
}

class _MypdfViewerState extends State<MypdfViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('PDF Viewer'),
        backgroundColor: Colors.lightBlue,
      ),
      body: SfPdfViewer.asset(
        'assets/Files/Complex.pdf',
      ),
    );
  }
}
