// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_diaryfood_app/views/add_diaryfood_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'My Diary Food',
          style: GoogleFonts.kanit(),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddDiaryfoodUI(),
            ),
          );
        },
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Center(
        child: Column(
          children: [
            //แสดงรูปที่เตรียมไว
            Image.asset(
              'assets/images/banner.jpg',
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
