import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './userprofile.dart';
import './marketplace.dart';
import './productdetails.dart';


void main() {
  runApp(CampusEbayApp());
}

class CampusEbayApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Campus eBay',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
      routes: {
        '/profile': (context) => UserProfile(),
        '/marketplace': (context) => Marketplace(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset("images/logo.png"),
            SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Where do you want to go?",style: GoogleFonts.poppins (textStyle:TextStyle(fontSize: 40,fontWeight: FontWeight.w900,)),),
              Icon(Icons.shop,size: 100,)
            ],
          ),
           SizedBox(height: 50),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/marketplace'),
              child: Text('Marketplace',style: GoogleFonts.poppins (textStyle:TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color:Colors.white)),),style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 48, 95, 213),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
            ),
             SizedBox(height: 50),
            ElevatedButton(
              
              onPressed: () => Navigator.pushNamed(context, '/profile'),
              child: Text('Profile',style: GoogleFonts.poppins (textStyle:TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.white)),),style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 48, 95, 213),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
            ),
          ],
        ),
      ),
     
    );
  }
}
